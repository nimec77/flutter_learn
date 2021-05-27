class ValidParentheses {
  bool validParentheses(String braces) {
    if (braces.isEmpty) {
      return true;
    }
    var bracesCount = 0;
    final splits = braces.split('');
    for (final element in splits) {
      if (element == '(') {
        bracesCount++;
      } else if (element == ')') {
        bracesCount--;
      }
      if (bracesCount < 0) {
        return false;
      }
    }
    return bracesCount == 0;
  }
}
