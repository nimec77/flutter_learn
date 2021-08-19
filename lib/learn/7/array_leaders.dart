class ArrayLeaders {
  List<int> arrayLeaders(List<int> numbers) {
    final result = <int>[];
    var sum = numbers.reduce((value, element) => value + element);
    for (final number in numbers) {
      sum -= number;
      if (number > sum) {
        result.add(number);
      }
    }
    return result;
  }
}
