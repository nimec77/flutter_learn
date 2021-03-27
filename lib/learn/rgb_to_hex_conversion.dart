class RgbToHexConversion {
  String rgb(int r, int g, int b) {
    final list = [r, g, b].map((e) {
      if (e < 0) {
        return 0;
      } else if (e > 255) {
        return 255;
      }
      return e;
    }).toList();
    return list.map((e) => e.toRadixString(16).padLeft(2, '0').toUpperCase()).join();
  }

  String rgbBest(int r, int g, int b) {
    return [r, g, b].map((e) => e.clamp(0, 255).toRadixString(16).padLeft(2, '0')).join().toUpperCase();
  }
}
