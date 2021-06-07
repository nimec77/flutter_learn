class SumsOfParts {
  List<int> partsSums(List<int> ls) {
    final result = <int>[];
    var sum = 0;
    for (final element in ls.reversed) {
      result.add(sum);
      sum += element;
    }
    result.add(sum);
    return result.reversed.toList();
  }

  List<int> partsSumsBest(List<int> ls) {
    var sum = 0;
    return [
      ...ls.reversed.map((e) => sum += e).toList().reversed,
      0,
    ];
  }
}
