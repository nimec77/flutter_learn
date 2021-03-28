class FillTheHardDiskDrive {
  int save(List<int> sizes, int hd) {
    int sum = 0;
    int result = 0;
    final mapSizes = sizes.asMap();
    for (final index in mapSizes.keys) {
      sum += mapSizes[index]!;
      if (sum > hd) {
        return result;
      }
      result = index + 1;
    }
    return result;
  }

  int saveBest(List<int> sizes, int hd) {
    int leftSize = hd;
    for (int i = 0; i < sizes.length; leftSize -= sizes[i++]) {
      if (sizes[i] > leftSize) {
        return i;
      }
    }
    return sizes.length;
  }
}
