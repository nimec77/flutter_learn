class AreaOrPerimeter {
  int areaOrPerimeter(int l, int w) {
    if (l == w) {
      return l * w;
    }
    return 2 * l + 2 * w;
  }

  int areaOrPerimeterBest(int l, int w) {
    return l == w ? l * w : 2 * (l + w);
  }
}
