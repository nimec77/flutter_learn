class BallUpwards {
  int maxBall(int v0) {
    const g = 9.81;

    final v = v0 * 5 / 18;

    var max = -1.0;
    var h = 0.0;
    var i = 1;
    while (max < h) {
      max = h;
      final t = i++ / 10;
      h = v * t - 0.5 * g * t * t;
    }

    return i - 2;
  }

  int maxBallBest(int v0) {
    return (v0 / 3.5316).round();
  }
}
