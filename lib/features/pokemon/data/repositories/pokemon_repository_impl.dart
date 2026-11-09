import '../../../../core/error/failures.dart';
import '../../domain/entities/pokemon.dart';
import '../../domain/repositories/pokemon_repository.dart';
import '../datasources/pokemon_local_data_source.dart';
import '../mappers/pokemon_mapper.dart';
import '../sync/pokemon_catalog_sync.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  PokemonRepositoryImpl(this._local, this._sync);

  final PokemonLocalDataSource _local;
  final PokemonCatalogSync _sync;

  @override
  Stream<List<Pokemon>> watchPokemons() {
    return _local.watchPokemons().map(
      (rows) => rows.map(toPokemonEntity).toList(),
    );
  }

  @override
  Stream<DateTime?> watchLastSync() {
    return _local
        .watchSyncMetadata(PokemonCatalogSync.key)
        .map((row) => row?.lastSuccessAt);
  }

  @override
  Future<Failure?> refresh({bool force = false}) => _sync.sync(force: force);
}
