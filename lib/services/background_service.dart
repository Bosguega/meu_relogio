import 'package:flutter/material.dart';
import 'package:workmanager/workmanager.dart';

class BackgroundService {
  static const String taskName = "updateClockTask";

  static void initialize() {
    Workmanager().initialize(
      callbackDispatcher,
      isInDebugMode: true, // Defina como false em produção
    );
  }

  static void registerTask() {
    Workmanager().registerPeriodicTask(
      "1",
      taskName,
      frequency: const Duration(minutes: 15), // Mínimo permitido pelo Android
      constraints: Constraints(
        networkType: NetworkType.not_required,
        requiresCharging: false,
      ),
    );
  }

  static void callbackDispatcher() {
    Workmanager().executeTask((task, inputData) {
      // Aqui você pode atualizar o widget nativo
      // Por enquanto, apenas imprimimos no log
      debugPrint("Background task executed at ${DateTime.now()}");
      return Future.value(true);
    });
  }
}