import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_database.dart';

// Instancia única de la base de datos durante toda la vida de la app.
final appDatabaseProvider = Provider<AppDatabase>((ref) {
  final database = AppDatabase();
  ref.onDispose(database.close);
  return database;
});
