class DiseaseSpread {
  int epidemic(int tm, int n, int s0, int i0, double b, double a) {
    int result = 0;

    final dt = tm / n;
    double s = s0.toDouble();
    double i = i0.toDouble();
    double r = 0;
    for (int j = 1; j <= n; j++) {
      final prevS = s;
      final prevI = i;
      final prevR = r;
      s = prevS - dt * b * prevS * prevI;
      i = prevI + dt * (b * prevS * prevI - a * prevI);
      r = prevR + dt * prevI * a;
      if (i < prevI) {
        break;
      }
      if (result < i) {
        result = i.ceil();
      }
    }

    return result;
  }

  int epidemicBest(int tm, int n, int s0, int i0, double b, double a) {
    final dt = tm / n;
    double s = s0.toDouble();
    double i = i0.toDouble();
    // double r = 0;

    for (int j = 1; j <= n; j++) {
      final nextI = i + dt * (b * s * i - a * i);
      s -= dt * b * s * i;
      // r += dt * i * a;
      if (nextI < i) {
        return i.ceil();
      }
      i = nextI;
    }

    return i.ceil();
  }
}
