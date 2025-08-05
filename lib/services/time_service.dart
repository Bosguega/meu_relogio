import 'dart:async';
import 'package:flutter/material.dart';

class TimeService extends ChangeNotifier {
  // Singleton para garantir uma única instância
  static final TimeService _instance = TimeService._internal();
  factory TimeService() => _instance;
  TimeService._internal();

  DateTime _currentTime = DateTime.now();
  DateTime get currentTime => _currentTime;

  Timer? _timer;

  void start() {
    // Se já estiver rodando, não faz nada
    if (_timer != null) return;
    
    // Atualiza imediatamente ao iniciar
    _updateTime();
    
    // Configura o timer para atualizar a cada minuto
    _timer = Timer.periodic(const Duration(minutes: 1), (timer) {
      _updateTime();
    });
  }

  void _updateTime() {
    _currentTime = DateTime.now();
    notifyListeners(); // Notifica os ouvintes sobre a mudança
  }

  void stop() {
    _timer?.cancel();
    _timer = null;
  }

  @override
  void dispose() {
    stop();
    super.dispose();
  }
}