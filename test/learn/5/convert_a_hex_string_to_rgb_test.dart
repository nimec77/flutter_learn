import 'package:flutter_learn/learn/5/convert_a_hex_string_to_rgb.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final convertAHexStringToRgb = ConvertAHexStringToRgb();

  group('Basic tests', () {
    test('Testing #FF9933', () => expect(convertAHexStringToRgb.hexToRgb('#FF9933'), {'r': 255, 'g': 153, 'b': 51}));
    test('Testing #FA13F3', () => expect(convertAHexStringToRgb.hexToRgb('#FA13F3'), {'r': 250, 'g': 19, 'b': 243}));
    test('Testing #84002C', () => expect(convertAHexStringToRgb.hexToRgb('#84002C'), {'r': 132, 'g': 0, 'b': 44}));
  });
}
