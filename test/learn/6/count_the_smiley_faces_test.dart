import 'package:flutter_learn/learn/6/count_the_smiley_faces.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final countTheSmileyFaces = CountTheSmileyFaces();
  group('Fixed tests', () {
    test('Testing for []', () => expect(countTheSmileyFaces.countSmileys([]), equals(0)));
    test("Testing for [':)', ';(', ';}', ':-D']",
        () => expect(countTheSmileyFaces.countSmileys([':)', ';(', ';}', ':-D']), equals(2)));
    test(r"Testing for [';]', ':[', ';*', ':\$', ';-D']",
        () => expect(countTheSmileyFaces.countSmileys([';]', ':[', ';*', r':\$', ';-D']), equals(1)));
    test("Testing for [':)',':(',':D',':O',':;']",
        () => expect(countTheSmileyFaces.countSmileys([':)', ':(', ':D', ':O', ':;']), equals(2)));
    test("Testing for [':-)',';~D',':-D',':_D']",
        () => expect(countTheSmileyFaces.countSmileys([':-)', ';~D', ':-D', ':_D']), equals(3)));
    test("Testing for [':---)','))',';~~D',';D']",
        () => expect(countTheSmileyFaces.countSmileys([':---)', '))', ';~~D', ';D']), equals(1)));
    test("Testing for [';~)',':)',':-)',':--)']",
        () => expect(countTheSmileyFaces.countSmileys([';~)', ':)', ':-)', ':--)']), equals(3)));
    test("Testing for [':o)',':--D',';-~)']",
        () => expect(countTheSmileyFaces.countSmileys([':o)', ':--D', ';-~)']), equals(0)));
  });
}
