import 'package:flutter_learn/learn/7/two_to_one.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final twoToOne = TwoToOne();
  void testing(String a, String b, String exp) {
    test('longest($a, $b)', () => expect(twoToOne.longest(a, b), equals(exp)));
  }

  group('Fixed tests', () {
    testing('aretheyhere', 'yestheyarehere', 'aehrsty');
    testing('loopingisfunbutdangerous', 'lessdangerousthancoding', 'abcdefghilnoprstu');
    testing('inmanylanguages', 'theresapairoffunctions', 'acefghilmnoprstuy');
    testing('lordsofthefallen', 'gamekult', 'adefghklmnorstu');
    testing('codewars', 'codewars', 'acdeorsw');
    testing('agenerationmustconfrontthelooming', 'codewarrs', 'acdefghilmnorstuw');
  });
}
