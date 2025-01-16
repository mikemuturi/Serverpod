import 'package:serverpod/serverpod.dart';
import 'package:serverpod/database.dart';

class Expense extends TableRow {
  @override
  final int? id;
  final String title;
  final double amount;
  final DateTime date;
  final String category;
  final String? notes;

  Expense({
    this.id,
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
    this.notes,
  });
}
