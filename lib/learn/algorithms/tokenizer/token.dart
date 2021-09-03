import 'package:flutter/foundation.dart';

@immutable
class Token {
  const Token(this.value);

  static const String operators = '+-*/';
  static const Set<String> functions = {'minus'};

  final String value;


  bool get isNumber {
    if (num.tryParse(value) != null) {
      return true;
    } else {
      return false;
    }
  }

  bool get isOpenBracket => value == '(';

  bool get isCloseBracket => value == ')';

  bool get isOperator => operators.contains(value);

  bool get isFunction => functions.contains(value);

  int get precedence => value == '+' || value == '-' ? 1 : 2;

  num toNumber() => num.parse(value);

  @override
  String toString() => value;

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) => other is Token && other.value == value;
}
