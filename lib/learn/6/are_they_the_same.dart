import 'package:collection/collection.dart';

class AreTheyTheSame {
  bool comp(List<int>? a1, List<int>? a2) {
    if (a1 == null || a2 == null) {
      return false;
    }
    return const ListEquality<int>().equals(a1.map((e) => e * e).toList()..sort(), a2..sort());
  }

  bool compInteresting(List<int>? a1, List<int>? a2) {
    if (a1 == null || a2 == null) {
      return false;
    }
    a1.map((e) => e * e).forEach((element) => a2.remove(element));

    return a2.isEmpty;
  }
}
