class JumpingNumber {
  String jumpingNumber(int n) {
    final ls = n.toString().split('').map(int.parse).toList();
    for (int i = 1; i < ls.length; i++) {
      final div = ls[i - 1] - ls[i];
      if (div.abs() != 1) {
        return 'Not!!';
      }
    }
    return 'Jumping!!';
  }

  String jumpingNumberRec(int n) {
    final ls = n.toString().split('').map(int.parse).toList();
    return jumping(ls);
  }

  String jumping(List<int> ls) {
    if (ls.length == 1) {
      return 'Jumping!!';
    }

    return (ls[0] - ls[1]).abs() == 1 ? jumping(ls.sublist(1)) : 'Not!!';
  }
}
