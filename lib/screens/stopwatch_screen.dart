import 'package:flutter/material.dart';

class StopwatchScreen extends StatelessWidget {
  const StopwatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Cronômetro',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}