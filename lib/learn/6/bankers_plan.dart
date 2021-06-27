class BankersPlan {
  bool fortune(int f0, double p, int c0, int n, double i) {
    final pd = 0.01 * p;
    final id = 0.01 * i;
    var fn = f0;
    var cn = c0;
    for (var j = 2; j <= n; ++j) {
      fn = fn + (fn * pd).floor() - cn;
      cn += (cn * id).floor();
    }
    return fn >= 0;
  }

  bool fortuneBest(int f0, double p, int c0, int n, double i) {
    final pd = 0.01 * p;
    final id = 0.01 * i;
    var fn = f0;
    var cn = c0;
    for (var j = 2; j <= n; ++j) {
      fn = ((1 + pd) * fn - cn).truncate();
      if (fn < 0) {
        return false;
      }
      cn = ((1 + id) * cn).truncate();
    }
    return true;
  }
}
