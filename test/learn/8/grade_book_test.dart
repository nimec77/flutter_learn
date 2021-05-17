import 'package:flutter_learn/learn/8/grade_book.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final gradeBook = GradeBook();
  group('Fixed tests', () {
    test('getGrade(95, 90, 93)', () => expect(gradeBook.getGrade(95, 90, 93), equals('A')));
    test('getGrade(100, 85, 96)', () => expect(gradeBook.getGrade(100, 85, 96), equals('A')));
    test('getGrade(92, 93, 94)', () => expect(gradeBook.getGrade(92, 93, 94), equals('A')));
    test('getGrade(100, 100, 100)', () => expect(gradeBook.getGrade(100, 100, 100), equals('A')));
    test('getGrade(70, 70, 100)', () => expect(gradeBook.getGrade(70, 70, 100), equals('B')));
    test('getGrade(82, 85, 87)', () => expect(gradeBook.getGrade(82, 85, 87), equals('B')));
    test('getGrade(84, 79, 85)', () => expect(gradeBook.getGrade(84, 79, 85), equals('B')));
    test('getGrade(70, 70, 70)', () => expect(gradeBook.getGrade(70, 70, 70), equals('C')));
    test('getGrade(75, 70, 79)', () => expect(gradeBook.getGrade(75, 70, 79), equals('C')));
    test('getGrade(60, 82, 76)', () => expect(gradeBook.getGrade(60, 82, 76), equals('C')));
    test('getGrade(65, 70, 59)', () => expect(gradeBook.getGrade(65, 70, 59), equals('D')));
    test('getGrade(66, 62, 68)', () => expect(gradeBook.getGrade(66, 62, 68), equals('D')));
    test('getGrade(58, 62, 70)', () => expect(gradeBook.getGrade(58, 62, 70), equals('D')));
    test('getGrade(44, 55, 52)', () => expect(gradeBook.getGrade(44, 55, 52), equals('F')));
    test('getGrade(48, 55, 52)', () => expect(gradeBook.getGrade(48, 55, 52), equals('F')));
    test('getGrade(58, 59, 60)', () => expect(gradeBook.getGrade(58, 59, 60), equals('F')));
    test('getGrade(0, 0, 0)', () => expect(gradeBook.getGrade(0, 0, 0), equals('F')));
  });
}