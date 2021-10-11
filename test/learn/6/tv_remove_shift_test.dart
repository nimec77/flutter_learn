import 'package:flutter_learn/learn/6/tv_remote_shift.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final tvRemoteShift = TvRemoteShift();

  test('Example', () {
    expect(tvRemoteShift.tvRemote('Code Wars'), equals(69));
  });

  test('Lower', () {
    expect(tvRemoteShift.tvRemote('does'),     equals(16));
    expect(tvRemoteShift.tvRemote('your'),     equals(23));
    expect(tvRemoteShift.tvRemote('solution'), equals(33));
    expect(tvRemoteShift.tvRemote('work'),     equals(20));
    expect(tvRemoteShift.tvRemote('for'),      equals(12));
    expect(tvRemoteShift.tvRemote('these'),    equals(27));
    expect(tvRemoteShift.tvRemote('words'),    equals(25));
  });

  test('Upper', () {
    expect(tvRemoteShift.tvRemote('DOES'),     equals(27));
    expect(tvRemoteShift.tvRemote('YOUR'),     equals(26));
    expect(tvRemoteShift.tvRemote('SOLUTION'), equals(38));
    expect(tvRemoteShift.tvRemote('WORK'),     equals(23));
    expect(tvRemoteShift.tvRemote('FOR'),      equals(21));
    expect(tvRemoteShift.tvRemote('THESE'),    equals(32));
    expect(tvRemoteShift.tvRemote('WORDS'),    equals(28));
  });

  test('Mix', () {
    expect(tvRemoteShift.tvRemote('Does'),     equals(40));
    expect(tvRemoteShift.tvRemote('Your'),     equals(37));
    expect(tvRemoteShift.tvRemote('Solution'), equals(49));
    expect(tvRemoteShift.tvRemote('Work'),     equals(30));
    expect(tvRemoteShift.tvRemote('For'),      equals(28));
    expect(tvRemoteShift.tvRemote('These'),    equals(41));
    expect(tvRemoteShift.tvRemote('Words'),    equals(35));
  });
}