class ExpenseEndpoint extends Endpoint {
  Future<List<Expense>> getExpenses(Session session) async {
    return await Expense.find(
      session,
      orderBy: Expense.t.date,
      orderDescending: true,
    );
  }

  Future<bool> createExpense(Session session, Expense expense) async {
    await expense.insert(session);
    return true;
  }

  Future<bool> updateExpense(Session session, Expense expense) async {
    await expense.update(session);
    return true;
  }

  Future<bool> deleteExpense(Session session, int id) async {
    return await Expense.deleteRow(session, id);
  }
}