import 'package:flutter_learn/learn/6/crack_the_pin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final crackThePin = CrackThePin();
  test('Simple test', () {
    expect(crackThePin.crack('827ccb0eea8a706c4c34a16891f84e7b'), equals('12345'));
  });
  test('Harder test', () {
    expect(crackThePin.crack('86aa400b65433b608a9db30070ec60cd'), equals('00078'));
  });
}