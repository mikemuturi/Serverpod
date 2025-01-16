class ExpenseService {
  final Client client;

  ExpenseService(this.client);

  Future<List<Expense>> getExpenses() async {
    return await client.expense.getExpenses();
  }

  Future<bool> createExpense(Expense expense) async {
    return await client.expense.createExpense(expense);
  }

  Future<bool> updateExpense(Expense expense) async {
    return await client.expense.updateExpense(expense);
  }

  Future<bool> deleteExpense(int id) async {
    return await client.expense.deleteExpense(id);
  }
}