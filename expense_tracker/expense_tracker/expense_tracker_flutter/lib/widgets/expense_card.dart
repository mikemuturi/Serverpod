class ExpenseCard extends StatelessWidget {
  final Expense expense;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const ExpenseCard({
    Key? key,
    required this.expense,
    required this.onEdit,
    required this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: Text(
          ExpenseCategory.values
              .firstWhere((e) => e.name == expense.category)
              .icon,
          style: TextStyle(fontSize: 24),
        ),
        title: Text(expense.title),
        subtitle: Text(expense.date.toString().split(' ')[0]),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('\$${expense.amount.toStringAsFixed(2)}',
                style: TextStyle(fontWeight: FontWeight.bold)),
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: ListTile(
                    leading: Icon(Icons.edit),
                    title: Text('Edit'),
                  ),
                  onTap: onEdit,
                ),
                PopupMenuItem(
                  child: ListTile(
                    leading: Icon(Icons.delete),
                    title: Text('Delete'),
                  ),
                  onTap: onDelete,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}