import 'dart:collection';

class ValidBraces {
  final _oppositeBracket = {')': '(', ']': '[', '}': '{'};

  bool validBraces(String braces) {
    final bracesQueue = Queue<String>();
    for (final bracket in braces.split('')) {
      if (_isOpenBracket(bracket)) {
        bracesQueue.add(bracket);
      } else if (_isCloseBracket(bracket)) {
        if (bracesQueue.isEmpty || !_isOppositeBracketBest(bracket, bracesQueue.removeLast())) {
          return false;
        }
      }
    }
    return bracesQueue.isEmpty;
  }

  bool _isOpenBracket(String bracket) {
    return '([{'.contains(bracket);
  }

  bool _isCloseBracket(String bracket) {
    return ')]}'.contains(bracket);
  }

  // bool _isOppositeBracket(String bracket, String fromStack) {
  //   switch (bracket) {
  //     case ')':
  //       return fromStack == '(';
  //     case ']':
  //       return fromStack == '[';
  //
  //     case '}':
  //       return fromStack == '{';
  //   }
  //   return false;
  // }

  bool _isOppositeBracketBest(String bracket, String fromStack) {
    return _oppositeBracket[bracket] == fromStack;
  }

  bool validBracesBest(String braces) {
    var result = braces;
    while (braces.contains('()') || braces.contains('[]') || braces.contains('{}')) {
      result = result.replaceAll('()', '');
      result = result.replaceAll('[]', '');
      result = result.replaceAll('{}', '');
    }

    return result.isEmpty;
  }

  bool validBracesReg(String braces) {
    var result = braces;
    final regex = RegExp(r'(\(\)|\[\]|\{\})');
    while (regex.hasMatch(result)) {
      result = result.replaceFirst(regex, '');
    }

    return result.isEmpty;
  }
}
