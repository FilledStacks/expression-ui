import 'package:flutter/material.dart';
import 'package:rive_counter/goal_selection/goal_selection_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GoalSelectionView(),
    );
  }
}
