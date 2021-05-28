class FillTheHardDiskDrive {
  int save(List<int> sizes, int hd) {
    var sum = 0;
    var result = 0;
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
    var leftSize = hd;
    for (var i = 0; i < sizes.length; leftSize -= sizes[i++]) {
      if (sizes[i] > leftSize) {
        return i;
      }
    }
    return sizes.length;
  }
}
