import 'package:flutter_learn/learn/6/digit_recovery.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final digitRecovery = DigitRecovery();
  test('Default test cases', () {
    expect(digitRecovery.recover('NEO'), equals('1'));
    expect(digitRecovery.recover('ONETWO'), equals('12'));
    expect(digitRecovery.recover('TWWTONE'), equals('21'));
    expect(digitRecovery.recover('OTNE'), equals('No digits found'));
    expect(digitRecovery.recover('ZYX'), equals('No digits found'));
    expect(digitRecovery.recover('ONENO'), equals('11'));
    expect(digitRecovery.recover('ZERO'), equals('0'));
    expect(digitRecovery.recover('NEOTWONEINEIGHTOWSVEEN'), equals('12219827'));
    expect(digitRecovery.recover('FOURSEVENTHREENINETWOIOSNSIXNNEIGHTFIVEONEJFTHREE'), equals('4739926985113'));
  });
}
