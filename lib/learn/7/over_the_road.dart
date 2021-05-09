class OverTheRoad {
  int overTheRoad(int address, int n) {
    if (address.isOdd) {
      return 2 * (n - (address / 2).floor());
    } else {
      return 2 * n + 1 - 2 * (address / 2).floor();
    }
  }

  int overTheRoadBest(int address, int n) => 2 * n - address + 1;
}
