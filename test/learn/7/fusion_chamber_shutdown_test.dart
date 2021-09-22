import 'package:flutter_learn/learn/7/fusion_chamber_shutdown.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final fusionChamberShutdown = FusionChamberShutdown();
  group('fixed tests', () {
    test('burner(45, 11, 100)', () => expect(fusionChamberShutdown.burner(45, 11, 100), equals([5, 45, 0])));
    test('burner(354, 1023230, 0)', () => expect(fusionChamberShutdown.burner(354, 1023230, 0), equals([0, 0, 354])));
    test('burner(939, 3, 694)', () => expect(fusionChamberShutdown.burner(939, 3, 694), equals([1, 346, 0])));
    test('burner(215, 41, 82100)', () => expect(fusionChamberShutdown.burner(215, 41, 82100), equals([20, 215, 0])));
    test('burner(113, 0, 52)', () => expect(fusionChamberShutdown.burner(113, 0, 52), equals([0, 26, 0])));
  });
}
