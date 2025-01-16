enum ExpenseCategory {
  food,
  transportation,
  entertainment,
  bills,
  other
}

extension ExpenseCategoryExtension on ExpenseCategory {
  String get name {
    return toString().split('.').last;
  }

  String get icon {
    switch (this) {
      case ExpenseCategory.food:
        return '🍴';
      case ExpenseCategory.transportation:
        return '🚗';
      case ExpenseCategory.entertainment:
        return '🎮';
      case ExpenseCategory.bills:
        return '💰';
      case ExpenseCategory.other:
        return '📝';
    }
  }
}