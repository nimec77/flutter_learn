import 'package:flutter_learn/learn/7/predict_your_age.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final predictYourAge = PredictYourAge();
  test('predictAge(65,60,75,55,60,63,64,45) equals 86', () {
    expect(predictYourAge.predictAge(65,60,75,55,60,63,64,45), equals(86));
  });
  test('predictAge(32,54,76,65,34,63,64,45), equals 79', () {
    expect(predictYourAge.predictAge(32,54,76,65,34,63,64,45), equals(79));
  });
}
