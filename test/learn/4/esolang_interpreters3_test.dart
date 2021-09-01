import 'package:flutter_learn/learn/4/esolang_interpreters3.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final esolangInterpreters3 = EsolangInterpreters3();

  test('examples', () {
    expect(esolangInterpreters3.paintfuck('*e*e*e*es*es*ws*ws*w*w*w*n*n*n*ssss*s*s*s*', 0, 6, 9),
        equals('000000\r\n000000\r\n000000\r\n000000\r\n000000\r\n000000\r\n000000\r\n000000\r\n000000'),
        reason: 'Your interpreter should initialize all cells in the datagrid to 0');
    expect(esolangInterpreters3.paintfuck('*e*e*e*es*es*ws*ws*w*w*w*n*n*n*ssss*s*s*s*', 7, 6, 9),
        equals('111100\r\n000000\r\n000000\r\n000000\r\n000000\r\n000000\r\n000000\r\n000000\r\n000000'),
        reason: 'Your interpreter should adhere to the number of iterations specified');
    expect(esolangInterpreters3.paintfuck('*e*e*e*es*es*ws*ws*w*w*w*n*n*n*ssss*s*s*s*', 19, 6, 9),
        equals('111100\r\n000010\r\n000001\r\n000010\r\n000100\r\n000000\r\n000000\r\n000000\r\n000000'),
        reason: 'Your interpreter should traverse the 2D datagrid correctly');
    expect(esolangInterpreters3.paintfuck('*e*e*e*es*es*ws*ws*w*w*w*n*n*n*ssss*s*s*s*', 42, 6, 9),
        equals('111100\r\n100010\r\n100001\r\n100010\r\n111100\r\n100000\r\n100000\r\n100000\r\n100000'),
        reason:
            "Your interpreter should traverse the 2D datagrid correctly for all of the 'n', 'e', 's' and 'w' "
            'commands');
    expect(esolangInterpreters3.paintfuck('*e*e*e*es*es*ws*ws*w*w*w*n*n*n*ssss*s*s*s*', 100, 6, 9),
        equals('111100\r\n100010\r\n100001\r\n100010\r\n111100\r\n100000\r\n100000\r\n100000\r\n100000'),
        reason: 'Your interpreter should terminate normally and return a representation of the final state of the 2D '
            'datagrid when all commands have been considered from left to right even if the number of iterations '
            'specified have not been fully performed');
  });
}
