import 'package:flutter_learn/learn/algorithms/tokenizer/token.dart';

class Tokenizer {
  final Set<String> _delimiters = '${Token.operators}()'.split('').toSet();

  Iterable<Token> tokenize(String expression) sync* {
    final data = expression.replaceAll(' ', '');
    var sequence = '';

    for (var i = 0; i < data.length; i++) {
      final char = data[i];

      if (char == '-' && (i == 0 || (Token(data[i - 1]).isOperator || Token(data[i - 1]).isOpenBracket))) {
        final next = Token(data[i + 1]);
        if (next.isNumber) {
          sequence += char;
        } else if (next.isOpenBracket) {
          if (sequence.isNotEmpty) {
            yield Token(sequence);
          }
          yield const Token('minus');
          sequence = '';
        }
      } else if (_delimiters.contains(char)) {
        if (sequence.isNotEmpty) {
          yield Token(sequence);
        }
        yield Token(char);
        sequence = '';
      } else {
        sequence += char;
      }
    }

    if (sequence.isNotEmpty) {
      yield Token(sequence);
    }
  }
}
