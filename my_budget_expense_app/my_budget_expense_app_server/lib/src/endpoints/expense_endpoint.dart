import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class ExpenseEndpoint extends Endpoint {
  Future<List<Category>> getCategories(Session session) async {
    return await Category.find(session);
  }

  Future<void> addCategory(Session session, Category category) async {
    await Category.insert(session, category);
  }

  Future<List<Expense>> getExpenses(Session session) async {
    return await Expense.find(session);
  }

  Future<void> addExpense(Session session, Expense expense) async {
    await Expense.insert(session, expense);
  }
}
