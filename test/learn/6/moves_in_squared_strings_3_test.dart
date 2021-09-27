import 'package:flutter_learn/learn/6/moves_in_squared_string_3.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final movesInSquaredString = MovesInSquaredString3();
  void dotest1(String s, String exp) {
    test('Testing rot90Clock for: \n$s \n', () =>
        expect(movesInSquaredString.oper(movesInSquaredString.rot90Clock, s), equals(exp)));
  }
  void dotest2(String s, String exp) {
    test('Testing diag1Sym for: \n$s \n', () =>
        expect(movesInSquaredString.oper(movesInSquaredString.diag1Sym, s), equals(exp)));
  }
  void dotest3(String s, String exp) {
    test('Testing selfieAndDiag1 for: \n$s \n', () =>
        expect(movesInSquaredString.oper(movesInSquaredString.selfieAndDiag1, s), equals(exp)));
  }
  group('fixed tests rot90Clock', () {
    dotest1('abcd\nefgh\nijkl\nmnop', 'miea\nnjfb\nokgc\nplhd');
    dotest1('rgavce\nvGcEKl\ndChZVW\nxNWgXR\niJBYDO\nSdmEKb',
        'Sixdvr\ndJNCGg\nmBWhca\nEYgZEv\nKDXVKc\nbORWle');
    dotest1('EFAxSN\nXbJObC\nMrNVyg\nUKqDsE\nrYnAfU\nnNjADZ',
        'nrUMXE\nNYKrbF\njnqNJA\nAADVOx\nDfsybS\nZUEgCN');

  });
  group('fixed tests diag1Sym', () {
    dotest2('abcd\nefgh\nijkl\nmnop', 'aeim\nbfjn\ncgko\ndhlp');
    dotest2('wuUyPC\neNHWxw\nehifmi\ntBTlFI\nvWNpdv\nIFkGjZ',
        'weetvI\nuNhBWF\nUHiTNk\nyWflpG\nPxmFdj\nCwiIvZ');
    dotest2('qAdPMX\nkRIQKU\nJeoroo\nNwVbtn\nAmQUqi\nVguxub',
        'qkJNAV\nARewmg\ndIoVQu\nPQrbUx\nMKotqu\nXUonib');

  });
  group('fixed tests selfieAndDiag1', () {
    dotest3('abcd\nefgh\nijkl\nmnop', 'abcd|aeim\nefgh|bfjn\nijkl|cgko\nmnop|dhlp');
    dotest3('NJVGhr\nMObsvw\ntPhCtl\nsoEnhi\nrtQRLK\nzjliWg',
        'NJVGhr|NMtsrz\nMObsvw|JOPotj\ntPhCtl|VbhEQl\nsoEnhi|GsCnRi\nrtQRLK|hvthLW\nzjliWg|rwliKg');
    dotest3('JAAn\nsrpa\nFngg\nmrVJ','JAAn|JsFm\nsrpa|Arnr\nFngg|ApgV\nmrVJ|nagJ');

  });
}
