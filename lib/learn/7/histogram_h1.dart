class HistogramH1 {
  String histogram(List<int> results) {
    var count = 0;
    final freq = results.map((e) => "${++count}|${'#'* e}${e != 0 ? ' $e' : ''}").toList();
    return '${freq.reversed.join('\n')}\n';
  }
}