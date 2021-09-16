import 'package:flutter_learn/learn/6/binaries.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final binaries = Binaries();
  void dotestCode(String s, String exp) {
    test('Testing code for: \n$s \n', () =>
        expect(binaries.code(s), equals(exp)));
  }
  void dotestDecode(String s, String exp) {
    test('Testing decode for: \n$s \n', () =>
        expect(binaries.decode(s), equals(exp)));
  }
  group('fixed tests code', () {
    dotestCode('62', '0011100110');
    dotestCode('55337700', '001101001101011101110011110011111010');
    dotestCode('1119441933000055', '1111110001100100110000110011000110010111011110101010001101001101');
    dotestCode('69', '00111000011001');
    dotestCode('86', '00011000001110');

  });
  group('fixed tests decode', () {
    dotestDecode('10001111', '07');
    dotestDecode('001100001100001100001110001110001110011101110111001110001110001110001111001111001111001100001100001100', '444666333666777444');
    dotestDecode('01110111110001100100011000000110000011110011110111011100110000110001100110', '33198877334422');
    dotestDecode('001100001101', '45');
    dotestDecode('1111110001100100111000111001110111001110001110', '1119663366');

  });
}
