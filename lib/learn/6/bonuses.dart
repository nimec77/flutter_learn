class Bonuses {
  List<int> bonus(List<int> arr, int s) {
    // 18𝑥=15𝑦=12𝑧
    // var v1 = (s / (1 + (arr[0] / arr[1]) + (arr[0] / arr[2]))).round();
    // var v2 = (s / (1 + (arr[1] / arr[0]) + (arr[1] / arr[2]))).round();
    // var v3 = (s / (1 + (arr[2] / arr[0]) + (arr[2] / arr[1]))).round();
    // return [v1, v2, v3];
    final rtn = <int>[];
    for (final v1 in arr) {
      final product = arr.fold<double>(0, (double p, e) => p + v1 / e);
      rtn.add((s / product).round());
    }
    return rtn;
  }}