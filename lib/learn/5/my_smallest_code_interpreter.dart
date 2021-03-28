import 'dart:collection';

class MySmallestCodeInterpreter {
  String brainLuck(String code, String input) {
    int selector = 0;
    final lenCode = code.length;
    int iCode = 0;
    final out = StringBuffer();
    final stack = <int>[];
    stack.add(0);
    final brackets = <int, int>{};

    final stackBrackets = <int>[];
    for (int i = 0; i < lenCode; i++) {
      if (code[i] == '[') {
        stackBrackets.add(i);
      }
      if (code[i] == ']') {
        final h = stackBrackets.removeAt(stackBrackets.length - 1);
        brackets[h] = i;
        brackets[i] = h;
      }
    }

    final queueInput = Queue.of(input.split(''));

    while (iCode < lenCode) {
      final operator = code[iCode];
      switch (operator) {
        case '>':
          if (selector++ == stack.length - 1) {
            stack.add(0);
          }
          break;
        case '<':
          if (selector-- == 0) {
            stack.insert(0, 0);
          }
          break;
        case '+':
          stack[selector] = (stack[selector] + 1) % 256;
          break;

        case '-':
          stack[selector] = (stack[selector] - 1) % 256;
          break;

        case '.':
          out.write(String.fromCharCode(stack[selector]));
          break;

        case ',':
          stack[selector] = queueInput.removeFirst().codeUnitAt(0);
          break;

        case '[':
          if (stack[selector] == 0) {
            iCode = brackets[iCode]!;
          }
          break;

        case ']':
          if (stack[selector] != 0) {
            iCode = brackets[iCode]!;
          }
          break;
      }
      iCode++;
    }

    return out.toString();
  }
}
