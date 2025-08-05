import 'package:flutter/material.dart';
import 'package:meu_relogio/widgets/clock_widget.dart';

class ClockScreen extends StatelessWidget {
  const ClockScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClockWidget(),
          SizedBox(height: 20),
          Text(
            'Relógio',
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}