import 'package:flutter/material.dart';
import 'package:flutter_expense_tracker/models/expense.dart';
import 'package:intl/intl.dart';

class ExpenseTrackerScreen extends StatefulWidget {
  const ExpenseTrackerScreen({super.key});

  @override
  State<ExpenseTrackerScreen> createState() => _ExpenseTrackerScreenState();
}

class _ExpenseTrackerScreenState extends State<ExpenseTrackerScreen> {
  List<Expense> myList = expenses;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('Expense Tracker App'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: const Card(
                    margin: EdgeInsets.all(10),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Expense Charts 02'),
                    ),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: myList.length,
                  itemBuilder: (context, index) {
                    final item = myList[index];
                    final dateTime =
                        DateFormat('yyyy-MM-dd HH:mm').format(item.date);
                    final amount = item.amount.toStringAsFixed(2);
                    return Dismissible(
                      key: Key(item.id),
                      onDismissed: (direction) {
                        setState(() {
                          myList.removeAt(index);
                        });
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("${item.name} deleted"),
                          ),
                        );
                      },
                      background: Container(
                        color: Colors.red[50],
                      ),
                      child: Card(
                        child: ListTile(
                          title: Text(item.name),
                          subtitle: Text(
                              "Catagory: ${item.category.name.toUpperCase()}"),
                          trailing: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("\$ ${amount}"),
                              Text(dateTime),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> _addExpenseDialog(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (context) {
      return const AlertDialog(
        title: Text("Add an expense"),
        

      )
    },
  );
}
