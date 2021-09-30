import 'package:flutter_learn/learn/6/reversing_process.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final reversingProcess = ReversingProcess();
  void dotest(String r, String exp) {
    test('Testing for $r', () =>
        expect(reversingProcess.decode(r), equals(exp)));
  }
  group('fixed tests', () {
    dotest('5057aan', 'Impossible to decode');
    dotest('1273409kuqhkoynvvknsdwljantzkpnmfgf', 'uogbucwnddunktsjfanzlurnyxmx');
    dotest('1544749cdcizljymhdmvvypyjamowl', 'mfmwhbpoudfujjozopaugcb');
    dotest('1122305vvkhrrcsyfkvejxjfvafzwpsdqgp', 'rrsxppowmjsrclfljrajtybwviqb');
    dotest('7235897srigyvazffyrtxizwgpmvpts', 'qfkoexapddefbtkpiojcxjbq');
    dotest('673334wauamqaamqkuusqegeqmi', 'Impossible to decode');

  });
}