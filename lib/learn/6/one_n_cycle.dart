class OneNCycle {
  int cycle(int n) {
    if (n % 2 == 0 || n % 5 == 0) {
      return -1;
    }
    int i = 0;
    int val = 1;
    while (true) {
      i++;
      val = val * 10 % n;
      if (val == 1) {
        return i;
      }
    }
  }

  int cycleBest(int n) {
    if (n % 2 == 0 || n % 5 == 0) {
      return -1;
    }
    int i = 1;
    for (int val = 1; val != 1; i++) {
      val = val * 10 % n;
    }

    return i;
  }
}
