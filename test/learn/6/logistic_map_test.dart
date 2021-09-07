import 'package:flutter_learn/learn/6/logistic_map.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final logisticMap = LogisticMap();

  test('Basic tests', () {
    expect(logisticMap.logisticMap(3,3,[0],[0]),equals([[0,1,2],[1,2,3],[2,3,4]]));
    expect(logisticMap.logisticMap(3,3,[2],[2]),equals([[4,3,2],[3,2,1],[2,1,0]]));
    expect(logisticMap.logisticMap(1,1,[0],[0]),equals([[0]]));
    expect(logisticMap.logisticMap(5,2,[0,4],[0,0]),equals([[0,1,2,1,0],[1,2,3,2,1]]));
    expect(logisticMap.logisticMap(2,2,[],[]),equals([[null,null],[null,null]]));
  });
}