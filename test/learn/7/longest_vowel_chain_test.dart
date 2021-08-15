import 'package:flutter_learn/learn/7/longest_vowel_chain.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final longestVowelChain = LongestVowelChain();
  group('Fixed tests', () {
    test('Testing for codewarriors', () => expect(longestVowelChain.solve('codewarriors'), equals(2)));
    test('Testing for suoidea', () => expect(longestVowelChain.solve('suoidea'), equals(3)));
    test(
        'Testing for ultrarevolutionariees', () => expect(longestVowelChain.solve('ultrarevolutionariees'), equals(3)));
    test('Testing for strengthlessnesses', () => expect(longestVowelChain.solve('strengthlessnesses'), equals(1)));
    test('Testing for cuboideonavicuare', () => expect(longestVowelChain.solve('cuboideonavicuare'), equals(2)));
    test('Testing for chrononhotonthuooaos', () => expect(longestVowelChain.solve('chrononhotonthuooaos'), equals(5)));
    test('Testing for iiihoovaeaaaoougjyaw', () => expect(longestVowelChain.solve('iiihoovaeaaaoougjyaw'), equals(8)));
  });
}
