import 'package:flutter_learn/learn/5/tv_remove_symbols.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final tvRemoteSymbols = TvRemoveSymbols();
  test('Example', () {
    expect(tvRemoteSymbols.tvRemote('Too Easy?'), equals(71));
  });

  test('Lower', () {
    expect(tvRemoteSymbols.tvRemote('does'),     equals(16));
    expect(tvRemoteSymbols.tvRemote('your'),     equals(21));
    expect(tvRemoteSymbols.tvRemote('solution'), equals(33));
    expect(tvRemoteSymbols.tvRemote('work'),     equals(18));
    expect(tvRemoteSymbols.tvRemote('for'),      equals(12));
    expect(tvRemoteSymbols.tvRemote('these'),    equals(27));
    expect(tvRemoteSymbols.tvRemote('words'),    equals(23));
  });

  test('Upper', () {
    expect(tvRemoteSymbols.tvRemote('DOES'),     equals(19));
    expect(tvRemoteSymbols.tvRemote('YOUR'),     equals(22));
    expect(tvRemoteSymbols.tvRemote('SOLUTION'), equals(34));
    expect(tvRemoteSymbols.tvRemote('WORK'),     equals(19));
    expect(tvRemoteSymbols.tvRemote('FOR'),      equals(15));
    expect(tvRemoteSymbols.tvRemote('THESE'),    equals(28));
    expect(tvRemoteSymbols.tvRemote('WORDS'),    equals(24));
  });

  test('Symbols', () {
    expect(tvRemoteSymbols.tvRemote('^does^'),               equals(33));
    expect(tvRemoteSymbols.tvRemote("\$your\$"),               equals(53));
    expect(tvRemoteSymbols.tvRemote('#solution#'),           equals(49));
    expect(tvRemoteSymbols.tvRemote('\u00bfwork\u00bf'),     equals(34));
    expect(tvRemoteSymbols.tvRemote('{for}'),                equals(38));
    expect(tvRemoteSymbols.tvRemote('\u00a3these\u00a3'),    equals(57));
    expect(tvRemoteSymbols.tvRemote('?symbols?'),            equals(54));
  });
}