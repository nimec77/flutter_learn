import 'package:flutter_learn/learn/algorithms/random_collection/random_map.dart';
import 'package:flutter_learn/learn/algorithms/random_collection/random_map_entry.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Test 10 map entry', () {
    final randomMap = RandomMap(10);
    final result = <MapEntry<int, int>>[
      RandomMapEntry(0, 5),
      RandomMapEntry(1, 4),
      RandomMapEntry(2, 3),
      RandomMapEntry(3, 1),
      RandomMapEntry(4, 2),
      RandomMapEntry(5, 8),
      RandomMapEntry(6, 7),
      RandomMapEntry(7, 0),
      RandomMapEntry(8, 4),
      RandomMapEntry(9, 1),
    ];

    final actual = randomMap.entries.toList();
    expect(actual, result);
  });

  test("test a 1,000,000,000 element for a match via the 'elementAt' method and the 'last' property", () {
    const index = 1000000000;
    const result = 256938588;

    final randomMapEntryIterable = RandomMap(index);
    expect(randomMapEntryIterable[index - 1], result);
  });

}
