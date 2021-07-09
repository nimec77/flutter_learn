class ThePoetAndThePendulum {
  List<int> pendulum(List<int> values) {
    final list = [...values]..sort();
    final result = [list.first];
    var i = 1;
    for (; i < values.length - 1; i += 2) {
      result
        ..add(list[i])
        ..insert(0, list[i + 1]);
    }
    if (i == values.length - 1) {
      result.add(list.last);
    }
    return result;
  }

  List<int> pendulumBest(List<int> values) {
    final list = [...values]..sort();
    final result = <int>[];
    for (var i = 0; i < values.length; ++i) {
      if (i.isEven) {
        result.insert(0, list[i]);
      } else {
        result.add(list[i]);
      }
    }
    return result;
  }
}
