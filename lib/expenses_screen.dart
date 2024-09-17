import 'package:flutter/material.dart';
import 'package:flutter_expense_tracker/models/expense.dart';

class ExpenseTrackerScreen extends StatefulWidget {
  const ExpenseTrackerScreen({super.key});

  @override
  State<ExpenseTrackerScreen> createState() => _ExpenseTrackerScreenState();
}

class _ExpenseTrackerScreenState extends State<ExpenseTrackerScreen> {
  List<Expense> myList = expenses;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.25,
              child: const Card(
                margin: EdgeInsets.all(10),
                child: Text('Expense Charts 02'),
              ),
            ),
            SingleChildScrollView(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: myList.length,
                itemBuilder: (context, index) {
                  final item = myList[index];
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
                    child: ListTile(
                      title: Text(item.name),
                      subtitle: Text(item.category.name.toUpperCase()),
                      trailing: Text("\$ ${item.amount.toString()}"),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
