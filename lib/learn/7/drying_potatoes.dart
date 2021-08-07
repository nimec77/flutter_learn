class DryingPotatoes {
  int potatoes(int p0, int w0, int p1) {
    final w1 = (100 - p0) / (100 - p1) * w0;

    return w1.truncate();
  }
}