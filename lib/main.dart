import 'package:flutter/material.dart';
import 'package:flutter_expense_tracker/expenses_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const ExpenseTrackerScreen(),
    );
  }
}
