import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/error/failures.dart';
import 'pokemon_list_provider.dart';

class CatalogSyncState {
  const CatalogSyncState({this.isSyncing = false, this.failure});
  final bool isSyncing;
  final Failure? failure;
}

class CatalogSyncController extends Notifier<CatalogSyncState> {
  @override
  CatalogSyncState build() => const CatalogSyncState();

  Future<void> refresh() async {
    if (state.isSyncing) return;

    state = const CatalogSyncState(isSyncing: true);
    final failure = await ref.read(pokemonRepositoryProvider).refresh();
    state = CatalogSyncState(failure: failure);
  }
}

final catalogSyncProvider =
    NotifierProvider<CatalogSyncController, CatalogSyncState>(
      CatalogSyncController.new,
    );
