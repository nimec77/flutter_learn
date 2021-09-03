import 'package:flutter_learn/learn/7/easy_wallpaper.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final easyWallpaper = EasyWallpaper();
  void testing(double l, double w, double h, String exp) =>
      test('wallpaper($l, $w, $h)', () => expect(easyWallpaper.wallpaper(l, w, h), equals(exp)));
  group('Basic tests', () {
    testing(6.3, 4.5, 3.29, 'sixteen');
    testing(6.3, 5.8, 3.13, 'seventeen');
    testing(6.1, 2, 3.15, 'twelve');
    testing(4.4, 3, 2.75, 'ten');
    testing(7.9, 5.4, 3.33, 'twenty');
    testing(7.9, 5.4, 0, 'zero');
    testing(0, 1.9, 2.78, 'zero');
  });
}
