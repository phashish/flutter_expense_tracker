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
    name: "Apple 1Kg",
    category: ExpenseCategory.food,
    amount: 10.0,
    date: DateTime.parse("2022-02-01 09:10:00.000"),
  ),
  Expense(
    name: "Orange 2Kg",
    category: ExpenseCategory.food,
    amount: 20.0,
    date: DateTime.parse("2022-03-01 19:10:00.000"),
  ),
  Expense(
    name: "Movie Tickets 2",
    category: ExpenseCategory.fun,
    amount: 15.0,
    date: DateTime.parse("2022-04-01 04:10:00.000"),
  ),
  Expense(
    name: "Phone Bill Wife",
    category: ExpenseCategory.bills,
    amount: 50.0,
    date: DateTime.parse("2022-01-01 05:10:00.000"),
  ),
];
