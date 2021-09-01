import 'package:flutter_learn/learn/6/moves_in_squared_strings.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final movesInSquaredStrings = MovesInSquaredStrings();
  void dotest1(String s, String exp) {
    test('Testing rot for: \n$s \n', () =>
        expect(movesInSquaredStrings.oper(movesInSquaredStrings.rot, s), equals(exp)));
  }
  void dotest2(String s, String exp) {
    test('Testing selfieAndRot for: \n$s \n', () =>
        expect(movesInSquaredStrings.oper(movesInSquaredStrings.selfieAndRot, s), equals(exp)));
  }
  group('fixed tests rot', () {
    dotest1('fijuoo\nCqYVct\nDrPmMJ\nerfpBA\nkWjFUG\nCVUfyL',
        'LyfUVC\nGUFjWk\nABpfre\nJMmPrD\ntcVYqC\nooujif');
    dotest1('rkKv\ncofM\nzXkh\nflCB', 'BClf\nhkXz\nMfoc\nvKkr');
    dotest1('lVHt\nJVhv\nCSbg\nyeCt', 'tCey\ngbSC\nvhVJ\ntHVl');
    dotest1('QMxo\ntmFe\nWLUG\nowoq', 'qowo\nGULW\neFmt\noxMQ');

  });
  group('fixed tests selfieAndRot', () {
    dotest2('xZBV\njsbS\nJcpN\nfVnP',
        'xZBV....\njsbS....\nJcpN....\nfVnP....\n....PnVf\n....NpcJ\n....Sbsj\n....VBZx');
    dotest2('uLcq\nJkuL\nYirX\nnwMB',
        'uLcq....\nJkuL....\nYirX....\nnwMB....\n....BMwn\n....XriY\n....LukJ\n....qcLu');
    dotest2('lVHt\nJVhv\nCSbg\nyeCt',
        'lVHt....\nJVhv....\nCSbg....\nyeCt....\n....tCey\n....gbSC\n....vhVJ\n....tHVl');
    dotest2('QMxo\ntmFe\nWLUG\nowoq',
        'QMxo....\ntmFe....\nWLUG....\nowoq....\n....qowo\n....GULW\n....eFmt\n....oxMQ');

  });
}
