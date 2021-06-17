class FindTheStrayNumber {
  int stray(List<int> numbers) {
    final map = <int, int>{};
    for (final element in numbers) {
      map[element] = (map[element] ?? 0) + 1;
    }
    final first = map.keys.first;
    final last = map.keys.last;

    return map[first]! > map[last]! ? last : first;
  }

  int strayBest(List<int> numbers) {
    return numbers.reduce((value, element) => value ^ element);
  }
}
