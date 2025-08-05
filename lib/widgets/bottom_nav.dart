import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.access_time),
          label: 'Relógio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.timer),
          label: 'Timer',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.alarm),
          label: 'Alarme',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.timer_10_outlined),
          label: 'Cronômetro',
        ),
      ],
    );
  }
}