import 'package:flutter_learn/learn/algorithms/random_collection/random_map_entry.dart';
import 'package:flutter_learn/learn/algorithms/random_collection/random_map_entry_iterable.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Test 10 map entry', () {
    final randomMapEntryIterable = RandomMapEntryIterable(10);
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

    final actual = randomMapEntryIterable.toList();
    expect(actual, result);
  });

  test("test a 1,000,000,000 element for a match via the 'elementAt' method and the 'last' property", () {
    const index = 1000000000;
    const value = 256938588;
    final result = RandomMapEntry(index - 1,  value);

    final randomMapEntryIterable = RandomMapEntryIterable(index);
    expect(randomMapEntryIterable.elementAt(index - 1), result);
    expect(randomMapEntryIterable.last, result);
  });
}
