import 'package:flutter_learn/learn/7/going_to_the_cinema.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Basic tests', () {
    final goingToTheCinema = GoingToTheCinema();
    test('movie(500, 15, 0.9)', () => expect(goingToTheCinema.movie(500, 15, 0.9), equals(43)));
    test('movie(100, 10, 0.95)', () => expect(goingToTheCinema.movie(100, 10, 0.95), equals(24)));
    test('movie(0, 10, 0.95)', () => expect(goingToTheCinema.movie(0, 10, 0.95), equals(2)));
    test('movie(250, 20, 0.9)', () => expect(goingToTheCinema.movie(250, 20, 0.9), equals(21)));
    test('movie(500, 20, 0.9)', () => expect(goingToTheCinema.movie(500, 20, 0.9), equals(34)));
    test('movie(2500, 20, 0.9)', () => expect(goingToTheCinema.movie(2500, 20, 0.9), equals(135)));
  });
}