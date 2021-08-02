import 'package:flutter_learn/learn/7/alphabet_symmetry.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final alphabetSymmetry = AlphabetSymmetry();
  group('Fixed tests', () {
    test("Testing for ['abode', 'ABc', 'xyzD']", () {
      expect(alphabetSymmetry.solve(['abode', 'ABc', 'xyzD']), equals([4, 3, 1]));
    });
    test("Testing for ['abide', 'ABc', 'xyz']", () {
      expect(alphabetSymmetry.solve(['abide', 'ABc', 'xyz']), equals([4, 3, 0]));
    });
    test("Testing for ['IAMDEFANDJKL', 'thedefgh', 'xyzDEFghijabc']", () {
      expect(alphabetSymmetry.solve(['IAMDEFANDJKL', 'thedefgh', 'xyzDEFghijabc']), equals([6, 5, 7]));
    });
    test("Testing for ['encode', 'abc', 'xyzD', 'ABmD']", () {
      expect(alphabetSymmetry.solve(['encode', 'abc', 'xyzD', 'ABmD']), equals([1, 3, 1, 3]));
    });
    test('Testing for []', () {
      expect(alphabetSymmetry.solve([]), equals([]));
    });
  });
}
