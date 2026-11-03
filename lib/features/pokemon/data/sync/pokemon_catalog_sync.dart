import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/database/app_database.dart';
import '../../../../core/error/error_mapper.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/sync/sync_status.dart';
import '../datasources/pokemon_local_data_source.dart';
import '../datasources/pokemon_remote_data_source.dart';

/// Descarga el catálogo de PokeAPI por páginas y lo guarda en Drift.
class PokemonCatalogSync {
  PokemonCatalogSync(this.remote, this.local);

  final PokemonRemoteDataSource remote;
  final PokemonLocalDataSource local;

  static const key = 'pokemon_catalog';
  static const pageSize = 200;

  bool _isRunning = false;

  /// Devuelve null si todo salió bien, o un Failure si algo falló.
  Future<Failure?> sync() async {
    // Si ya hay una sincronización en curso, no se empieza otra.
    if (_isRunning) return null;
    _isRunning = true;

    var offset = 0;
    try {
      // Empezar donde se quedó la última vez (0 si es la primera).
      final previous = await local.getSyncMetadata(key);
      offset = previous?.cursorOrOffset ?? 0;
      final syncedAt = DateTime.now();

      // Pedir y guardar página por página.
      while (true) {
        await _save(SyncStatus.running, offset);

        final page = await remote.fetchPokemonPage(
          limit: pageSize,
          offset: offset,
        );
        await local.savePokemonPage(page, syncedAt);
        offset += page.length;

        // Si llegaron menos de 200, era la última página.
        if (page.length < pageSize) break;
      }

      await _save(SyncStatus.success, 0, finishedAt: DateTime.now());
      return null;
    } catch (error) {
      // Se guarda el offset para continuar desde aquí la próxima vez.
      try {
        await _save(SyncStatus.error, offset);
      } catch (_) {}
      return toFailure(error);
    } finally {
      _isRunning = false;
    }
  }

  /// Anota el estado y el offset en SyncMetadata.
  Future<void> _save(String status, int offset, {DateTime? finishedAt}) {
    return local.saveSyncMetadata(
      SyncMetadataCompanion(
        resourceKey: const Value(key),
        status: Value(status),
        cursorOrOffset: Value(offset),
        lastSuccessAt: finishedAt == null
            ? const Value.absent()
            : Value(finishedAt),
      ),
    );
  }
}

final pokemonCatalogSyncProvider = Provider<PokemonCatalogSync>((ref) {
  return PokemonCatalogSync(
    ref.watch(pokemonRemoteDataSourceProvider),
    ref.watch(pokemonLocalDataSourceProvider),
  );
});