import 'package:flutter/material.dart';
import 'package:meu_relogio/services/time_service.dart';
import 'package:provider/provider.dart';

class ClockWidget extends StatelessWidget {
  const ClockWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TimeService>(
      builder: (context, timeService, child) {
        return Text(
          _formatTime(timeService.currentTime),
          style: const TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
          ),
        );
      },
    );
  }

  String _formatTime(DateTime time) {
    // Formato HH:MM
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }
}