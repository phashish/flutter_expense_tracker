import 'package:uuid/uuid.dart';

enum ExpenseCategory {
  food,
  fun,
  bills,
  other,
}

class Expense {
  String id;
  final String name;
  final ExpenseCategory category;
  final double amount;
  final DateTime date;

  Expense(
      {required this.name,
      required this.category,
      required this.amount,
      required this.date})
      : id = const Uuid().v4();
}

List<Expense> expenses = [
  Expense(
    name: "Apple",
    category: ExpenseCategory.food,
    amount: 10.0,
    date: DateTime.now(),
  ),
  Expense(
    name: "Orange",
    category: ExpenseCategory.food,
    amount: 20.0,
    date: DateTime.now(),
  ),
  Expense(
    name: "Movie Tickets",
    category: ExpenseCategory.fun,
    amount: 15.0,
    date: DateTime.now(),
  ),
  Expense(
    name: "Phone Bill",
    category: ExpenseCategory.bills,
    amount: 50.0,
    date: DateTime.now(),
  ),
];
