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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Expense Tracker App'),
        ),
        body: const ExpenseTrackerScreen(),
      ),
    );
  }
}
