import 'package:flutter_learn/learn/7/the_poet_and_the_pendulum.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final thePoetAndThePendulum = ThePoetAndThePendulum();
  group('Fixed tests', () {
    // test('Testing for [4, 10, 9]', () {
    //   expect(thePoetAndThePendulum.pendulum([4, 10, 9]), equals([10, 4, 9]));
    // });
    test('Testing for [8, 7, 10, 3]', () {
      expect(thePoetAndThePendulum.pendulum([8, 7, 10, 3]), equals([8, 3, 7, 10]));
    });
    test('Testing for [6, 6, 8, 5, 10]', () {
      expect(thePoetAndThePendulum.pendulum([6, 6, 8, 5, 10]), equals([10, 6, 5, 6, 8]));
    });
    test('Testing for [9, 4, 6, 4, 10, 5]', () {
      expect(thePoetAndThePendulum.pendulum([9, 4, 6, 4, 10, 5]), equals([9, 5, 4, 4, 6, 10]));
    });
    test('Testing for [4, 6, 8, 7, 5]', () {
      expect(thePoetAndThePendulum.pendulum([4, 6, 8, 7, 5]), equals([8, 6, 4, 5, 7]));
    });
    test('Testing for [10, 5, 6, 10]', () {
      expect(thePoetAndThePendulum.pendulum([10, 5, 6, 10]), equals([10, 5, 6, 10]));
    });
    test('Testing for [11, 12, 12]', () {
      expect(thePoetAndThePendulum.pendulum([11, 12, 12]), equals([12, 11, 12]));
    });
    test('Testing for [27, 27, 19, 21, 22, 28, 24]', () {
      expect(thePoetAndThePendulum.pendulum([27, 27, 19, 21, 22, 28, 24]), equals([28, 27, 22, 19, 21, 24, 27]));
    });
    test('Testing for [20, 19, 25, 16, 19, 30, 18, 24]', () {
      expect(thePoetAndThePendulum.pendulum([20, 19, 25, 16, 19, 30, 18, 24]), equals([25, 20, 19, 16, 18, 19, 24, 30]));
    });
    test('Testing for [22, 26, 21, 27, 24, 21, 15, 26, 25]', () {
      expect(thePoetAndThePendulum.pendulum([22, 26, 21, 27, 24, 21, 15, 26, 25]), equals([27, 26, 24, 21, 15, 21, 22, 25, 26]));
    });
    test('Testing for [19, 30, 16, 19, 28, 26, 28, 17, 21, 17]', () {
      expect(thePoetAndThePendulum.pendulum([19, 30, 16, 19, 28, 26, 28, 17, 21, 17]), equals([28, 26, 19, 17, 16, 17, 19, 21, 28, 30]));
    });
    test('Testing for [27, 28, 26, 28, 24, 22, 18, 16, 15, 24]', () {
      expect(thePoetAndThePendulum.pendulum([27, 28, 26, 28, 24, 22, 18, 16, 15, 24]), equals([28, 26, 24, 18, 15, 16, 22, 24, 27, 28]));
    });
    test('Testing for [17, 26, 15, 26, 26, 20, 16, 18, 15]', () {
      expect(thePoetAndThePendulum.pendulum([17, 26, 15, 26, 26, 20, 16, 18, 15]), equals([26, 26, 18, 16, 15, 15, 17, 20, 26]));
    });
    test('Testing for [22, 21, 19, 27, 18, 15, 24, 24]', () {
      expect(thePoetAndThePendulum.pendulum([22, 21, 19, 27, 18, 15, 24, 24]), equals([24, 22, 19, 15, 18, 21, 24, 27]));
    });
    test('Testing for [33, 38, 38, 36, 43, 48, 32, 40, 47, 50, 33]', () {
      expect(thePoetAndThePendulum.pendulum([33, 38, 38, 36, 43, 48, 32, 40, 47, 50, 33]), equals([50, 47, 40, 38, 33, 32, 33, 36, 38, 43, 48]));
    });
    test('Testing for [49, 40, 41, 41, 39, 43, 40, 46, 30, 47, 46, 40]', () {
      expect(thePoetAndThePendulum.pendulum([49, 40, 41, 41, 39, 43, 40, 46, 30, 47, 46, 40]), equals([47, 46, 41, 40, 40, 30, 39, 40, 41, 43, 46, 49]));
    });
    test('Testing for [48, 41, 38, 35, 50, 46, 38, 42, 37, 49, 44, 32, 37]', () {
      expect(thePoetAndThePendulum.pendulum([48, 41, 38, 35, 50, 46, 38, 42, 37, 49, 44, 32, 37]), equals([50, 48, 44, 41, 38, 37, 32, 35, 37, 38, 42, 46, 49]));
    });
    test('Testing for [49, 30, 39, 30, 40, 44, 43, 48, 47, 50, 42, 48, 33]', () {
      expect(thePoetAndThePendulum.pendulum([49, 30, 39, 30, 40, 44, 43, 48, 47, 50, 42, 48, 33]), equals([50, 48, 47, 43, 40, 33, 30, 30, 39, 42, 44, 48, 49]));
    });
    test('Testing for [48, 43, 35, 47, 39, 38, 38, 46, 49, 32, 42]', () {
      expect(thePoetAndThePendulum.pendulum([48, 43, 35, 47, 39, 38, 38, 46, 49, 32, 42]), equals([49, 47, 43, 39, 38, 32, 35, 38, 42, 46, 48]));
    });
    test('Testing for [-9, -2, -10, -6]', () {
      expect(thePoetAndThePendulum.pendulum([-9, -2, -10, -6]), equals([-6, -10, -9, -2]));
    });
    test('Testing for [-3, -6, -7]', () {
      expect(thePoetAndThePendulum.pendulum([-3, -6, -7]), equals([-3, -7, -6]));
    });
    test('Testing for [-7, -8, -2, -3, -4]', () {
      expect(thePoetAndThePendulum.pendulum([-7, -8, -2, -3, -4]), equals([-2, -4, -8, -7, -3]));
    });
    test('Testing for [-8, -8, -9, -10, -10, -3]', () {
      expect(thePoetAndThePendulum.pendulum([-8, -8, -9, -10, -10, -3]), equals([-8, -9, -10, -10, -8, -3]));
    });
    test('Testing for [-7, -10, -1, -10, -8]', () {
      expect(thePoetAndThePendulum.pendulum([-7, -10, -1, -10, -8]), equals([-1, -8, -10, -10, -7]));
    });
    test('Testing for [-6, -2, -5]', () {
      expect(thePoetAndThePendulum.pendulum([-6, -2, -5]), equals([-2, -6, -5]));
    });
    test('Testing for [-2, -11, -6, -11, -4, -3, -5]', () {
      expect(thePoetAndThePendulum.pendulum([-2, -11, -6, -11, -4, -3, -5]), equals([-2, -4, -6, -11, -11, -5, -3]));
    });
    test('Testing for [-19, -9, -5, -6, -15, -16, -5, -12]', () {
      expect(thePoetAndThePendulum.pendulum([-19, -9, -5, -6, -15, -16, -5, -12]), equals([-5, -9, -15, -19, -16, -12, -6, -5]));
    });
    test('Testing for [-18, -2, -11, -10, -6, -7, -7, -12, -16]', () {
      expect(thePoetAndThePendulum.pendulum([-18, -2, -11, -10, -6, -7, -7, -12, -16]), equals([-2, -7, -10, -12, -18, -16, -11, -7, -6]));
    });
    test('Testing for [-10, -10, -12, -13, -5, -10, -4, -17, -5, -12]', () {
      expect(thePoetAndThePendulum.pendulum([-10, -10, -12, -13, -5, -10, -4, -17, -5, -12]), equals([-5, -10, -10, -12, -17, -13, -12, -10, -5, -4]));
    });
    test('Testing for [-33, -21, -6, -29, -24, -5, -50, -42, -43, -17, -17]', () {
      expect(thePoetAndThePendulum.pendulum([-33, -21, -6, -29, -24, -5, -50, -42, -43, -17, -17]), equals([-5, -17, -21, -29, -42, -50, -43, -33, -24, -17, -6]));
    });
    test('Testing for [-4, -50, -32, -23, -47, -44, -43, -24, -29, -44, -20, -35]', () {
      expect(thePoetAndThePendulum.pendulum([-4, -50, -32, -23, -47, -44, -43, -24, -29, -44, -20, -35]), equals([-20, -24, -32, -43, -44, -50, -47, -44, -35, -29, -23, -4]));
    });
    test('Testing for [-36, -38, -44, -47, -41, -27, -10, -30, -22, -11, -23, -50, -23]', () {
      expect(thePoetAndThePendulum.pendulum([-36, -38, -44, -47, -41, -27, -10, -30, -22, -11, -23, -50, -23]), equals([-10, -22, -23, -30, -38, -44, -50, -47, -41, -36, -27, -23, -11]));
    });
  });
}