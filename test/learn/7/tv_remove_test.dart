import 'package:flutter_learn/learn/7/tv_remote.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final tvRemove = TvRemote();

  test('Example', () {
    expect(tvRemove.tvRemote('codewars'), equals(36));
  });

  test('Misc', () {
    expect(tvRemove.tvRemote('does'),     equals(16));
    expect(tvRemove.tvRemote('your'),     equals(23));
    expect(tvRemove.tvRemote('solution'), equals(33));
    expect(tvRemove.tvRemote('work'),     equals(20));
    expect(tvRemove.tvRemote('for'),      equals(12));
    expect(tvRemove.tvRemote('these'),    equals(27));
    expect(tvRemove.tvRemote('words'),    equals(25));
  });

}
