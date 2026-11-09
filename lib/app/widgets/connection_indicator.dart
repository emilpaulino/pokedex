import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/connectivity/connection_monitor.dart';
import '../../core/connectivity/connection_status.dart';
import '../../features/pokemon/presentation/providers/catalog_sync_provider.dart';
import '../../features/pokemon/presentation/providers/pokemon_list_provider.dart';
import '../theme.dart';

class ConnectionIndicator extends ConsumerWidget {
  const ConnectionIndicator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final status = ref.watch(connectionMonitorProvider);
    final isSyncing = ref.watch(catalogSyncProvider).isSyncing;
    final look = _lookFor(status, isSyncing);

    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {
        ref.read(connectionMonitorProvider.notifier).checkNow();
        showModalBottomSheet<void>(
          context: context,
          builder: (_) => const _StatusSheet(),
        );
      },
      child: SizedBox(
        width: 84,
        height: 48,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(look.icon, color: look.color, size: 18),
            const SizedBox(height: 2),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                look.label,
                maxLines: 1,
                style: Theme.of(context).textTheme.labelSmall
                    ?.copyWith(color: look.color, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Panel que se abre al tocar el indicador.
class _StatusSheet extends ConsumerWidget {
  const _StatusSheet();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final status = ref.watch(connectionMonitorProvider);
    final isSyncing = ref.watch(catalogSyncProvider).isSyncing;
    final lastSync = ref.watch(lastSyncProvider).value;

    final look = _lookFor(status, isSyncing);
    final description = _describe(status, isSyncing, lastSync);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Row(
          children: [
            Icon(look.icon, color: look.color, size: 28),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    look.label,
                    style: Theme.of(context).textTheme.titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(description),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Símbolo, color y texto corto de cada estado.
class _IndicatorLook {
  const _IndicatorLook(this.icon, this.color, this.label);

  final IconData icon;
  final Color color;
  final String label;
}

_IndicatorLook _lookFor(ConnectionStatus status, bool isSyncing) {
  if (isSyncing) {
    return const _IndicatorLook(
      Icons.sync,
      statusSyncingColor,
      'Sincronizando',
    );
  }

  return switch (status) {
    ConnectionStatus.online => const _IndicatorLook(
      Icons.circle,
      statusOnlineColor,
      'En línea',
    ),
    ConnectionStatus.offline => const _IndicatorLook(
      Icons.circle_outlined,
      statusOfflineColor,
      'Sin conexión',
    ),
    ConnectionStatus.serviceUnavailable => const _IndicatorLook(
      Icons.warning_rounded,
      statusUnavailableColor,
      'Sin servicio',
    ),
    ConnectionStatus.checking => const _IndicatorLook(
      Icons.circle_outlined,
      statusCheckingColor,
      'Verificando',
    ),
  };
}

// Descripción del estatus de conexión
String _describe(ConnectionStatus status, bool isSyncing, DateTime? lastSync) {
  if (isSyncing) {
    return 'Descargando los datos más recientes.';
  }

  final when = lastSync == null ? null : _formatTime(lastSync);

  return switch (status) {
    ConnectionStatus.online =>
      when == null ? 'Datos actualizados.' : 'Datos actualizados $when.',
    ConnectionStatus.offline =>
      when == null
          ? 'Todavía no hay datos guardados.'
          : 'Mostrando datos guardados, actualizados $when.',
    ConnectionStatus.serviceUnavailable =>
      'El servidor no responde. Mostrando datos guardados.',
    ConnectionStatus.checking => 'Comprobando la conexión…',
  };
}

String _formatTime(DateTime time) {
  String two(int n) => n.toString().padLeft(2, '0');

  final hour12 = time.hour % 12 == 0 ? 12 : time.hour % 12;
  final period = time.hour < 12 ? 'AM' : 'PM';
  final clock = 'a las $hour12:${two(time.minute)} $period';

  final now = DateTime.now();
  final isToday =
      time.year == now.year && time.month == now.month && time.day == now.day;
  return isToday ? clock : 'el ${two(time.day)}/${two(time.month)} $clock';
}
