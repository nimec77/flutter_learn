class JosephusSurvivor {
  int josephusSurvivor(int n, int k) {
    var res = 0;

    for (int i = 1; i <= n; i++) {
      res = (res + k) % i;
    }

    return res + 1;
  }
}
