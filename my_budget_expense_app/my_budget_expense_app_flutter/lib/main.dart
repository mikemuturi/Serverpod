import 'package:flutter/material.dart';
import 'package:my_budget_expense_app_client/my_budget_expense_app_client.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final client = MyBudgetExpenseAppClient('http://localhost:8080/');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Budget Expense App',
      home: ExpenseHomePage(client: client),
    );
  }
}

class ExpenseHomePage extends StatelessWidget {
  final MyBudgetExpenseAppClient client;

  const ExpenseHomePage({Key? key, required this.client}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Budget Expense Tracker')),
      body: Center(child: Text('Welcome to the Budget Expense App')),
    );
  }
}
