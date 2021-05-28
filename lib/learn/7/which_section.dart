class WhichSection {
  int getSectionId(int n, List<int> a) {
    var scrollY = 0;
    var position = -1;
    final mapSize = a.asMap();
    for (final index in mapSize.keys) {
      scrollY += mapSize[index]!;
      if (n < scrollY) {
        position = index;
        break;
      }
    }
    return position;
  }

  int getSectionIdBest(int n, List<int> a) {
    var scrollY = n;
    return a.indexWhere((size) => (scrollY -= size) < 0);
  }
}
