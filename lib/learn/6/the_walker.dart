import 'dart:math' as math;

class TheWalker {
  List<int> solve(final int a, final int b, final int c, final int alpha, final int beta, final int gamma) {
    final oa = a;
    final ad = oa * math.sin(toRadian(alpha));
    final ab = b;
    final ae = ab * math.cos(toRadian(beta));
    final bc = c;
    final fc = bc * math.sin(toRadian(gamma));
    final cg = ad + ae - fc;
    final eb = ab * math.sin(toRadian(beta));
    final bf = bc * math.cos(toRadian(gamma));
    final od = oa * math.cos(toRadian(alpha));
    final og = eb + bf - od;
    final oc = math.sqrt(cg * cg + og * og);
    final delta = 180 - toDegrees(math.atan( cg / og));
    final minutes = getFraction(delta) * 60;
    final seconds = getFraction(minutes) * 60;
    return [oc.round(), delta.truncate() , minutes.truncate(), seconds.truncate()];
  }

  double toRadian(final num degrees) => (degrees * math.pi) / 180;

  double toDegrees(final num radian) => (radian * 180) / math.pi;

  double getFraction(final double value) => value - value.truncate();

  List<int> solveBest(final int a, final int b, final int c, final int alpha, final int beta, final int gamma) {
    final xA = math.cos(toRadian(alpha)) * a;
    final yA = math.sin(toRadian(alpha)) * a;

    final xB = xA - math.sin(toRadian(beta)) * b;
    final yB = yA + math.cos(toRadian(beta)) * b;

    final yC = yB - math.sin(toRadian(gamma)) * c;
    final xC = xB - math.cos(toRadian(gamma)) * c;

    final pointC = math.Point(xC, yC);
    const pointO = math.Point(0.0, 0);
    final co = pointO.distanceTo(pointC);

    final tOC = 180 - toDegrees(math.asin(yC / co));

    final minutes = getFraction(tOC) * 60;
    final seconds = getFraction(minutes) * 60;
    return [co.round(), tOC.truncate() , minutes.truncate(), seconds.truncate()];
  }
}