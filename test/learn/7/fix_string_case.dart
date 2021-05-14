import 'package:flutter_learn/learn/7/fix_string_case.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final fixStringCase = FixStringCase();

  group("Basic tests", () {
    test("Testing for code", () => expect(fixStringCase.solve("code"), equals("code")));
    test("Testing for CODe", () => expect(fixStringCase.solve("CODe"), equals("CODE")));
    test("Testing for COde", () => expect(fixStringCase.solve("COde"), equals("code")));
    test("Testing for Code", () => expect(fixStringCase.solve("Code"), equals("code")));
  });
}

