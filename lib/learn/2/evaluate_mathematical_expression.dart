import 'dart:collection';

import 'package:flutter_learn/learn/algorithms/tokenizer/token.dart';
import 'package:flutter_learn/learn/algorithms/tokenizer/tokenizer.dart';

class EvaluateMathematicalExpression {
  num calc(String expression) {
    final input = _infixToRpn(expression);
    return _rpnAlgorithm(input);
  }

  Queue<Token> _infixToRpn(String expression) {
    final Queue<Token> stack = Queue();
    final Queue<Token> output = Queue();

    final tokens = Tokenizer().tokenize(expression);
    for (final token in tokens) {
      if (token.isNumber) {
        output.add(token);
      } else if (token.isFunction) {
        stack.add(token);
      } else if (token.isOperator) {
        while (stack.isNotEmpty && stack.last.isOperator && token.precedence <= stack.last.precedence) {
          output.add(stack.removeLast());
        }
        stack.add(token);
      } else if (token.isOpenBracket) {
        stack.add(token);
      } else if (token.isCloseBracket) {
        while (stack.isNotEmpty && !stack.last.isOpenBracket) {
          output.add(stack.removeLast());
        }
        stack.removeLast();
        if (stack.isNotEmpty && stack.last.isFunction) {
          output.add(stack.removeLast());
        }
      }
    }
    while (stack.isNotEmpty) {
      output.add(stack.removeLast());
    }
    return output;
  }

  num _rpnAlgorithm(Queue<Token> input) {
    final stack = Queue<num>();

    for (final token in input) {
      if (token.isNumber) {
        stack.add(token.toNumber());
      } else if (token.isFunction) {
        final operand = stack.removeLast();
        stack.add(-operand);
      } else if (token.isOperator) {
        final operand2 = stack.removeLast();
        final operand1 = stack.removeLast();
        switch (token.value) {
          case '+':
            stack.add(operand1 + operand2);
            break;

          case '-':
            stack.add(operand1 - operand2);
            break;

          case '*':
            stack.add(operand1 * operand2);
            break;

          case '/':
            stack.add(operand1 / operand2);
            break;
        }
      }
    }
    return stack.removeLast();
  }
}
