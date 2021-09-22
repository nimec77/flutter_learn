import 'dart:math' as math;

class FusionChamberShutdown {
  List<int> burner(final int c, final int h, final int o) {
    var carbon = c;
    var hydrogen = h;
    var oxygen = o;
    final water = math.min(hydrogen ~/ 2, oxygen);
    hydrogen -= water * 2;
    oxygen -= water;
    final co2 = math.min(carbon, oxygen ~/ 2);
    carbon -= co2;
    oxygen -= co2 * 2;
    final methane = math.min(carbon, hydrogen ~/ 4);

    return [water, co2, methane];
  }
}