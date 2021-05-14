import 'package:flutter_learn/learn/7/alternate_capitalization.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Fixed tests', () {
    final alternateCapitalization = AlternateCapitalization();
    test(
        'Testing for abcdef', () => expect(alternateCapitalization.capitalize('abcdef'), equals(['AbCdEf', 'aBcDeF'])));
    test('Testing for codewars',
        () => expect(alternateCapitalization.capitalize('codewars'), equals(['CoDeWaRs', 'cOdEwArS'])));
    test('Testing for abracadabra',
        () => expect(alternateCapitalization.capitalize('abracadabra'), equals(['AbRaCaDaBrA', 'aBrAcAdAbRa'])));
    test('Testing for codewarriors',
        () => expect(alternateCapitalization.capitalize('codewarriors'), equals(['CoDeWaRrIoRs', 'cOdEwArRiOrS'])));
    test(
        'Testing for indexinglessons',
        () => expect(
            alternateCapitalization.capitalize('indexinglessons'), equals(['InDeXiNgLeSsOnS', 'iNdExInGlEsSoNs'])));
    test(
        'Testing for codingisafunactivity',
        () => expect(alternateCapitalization.capitalize('codingisafunactivity'),
            equals(['CoDiNgIsAfUnAcTiViTy', 'cOdInGiSaFuNaCtIvItY'])));
  });
}
