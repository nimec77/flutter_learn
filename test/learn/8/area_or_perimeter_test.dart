import 'package:flutter_learn/learn/8/area_or_perimeter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final areaOrPerimeter = AreaOrPerimeter();
  group('area_or_perimeter', () {
    test('fixed tests', () {
      expect(areaOrPerimeter.areaOrPerimeter(4, 4), equals(16));
      expect(areaOrPerimeter.areaOrPerimeter(6, 10), equals(32));
    });
  });
}