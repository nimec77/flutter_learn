class SumOfNumbersFrom0ToN {
  String showSequence(num n) {
    if (n < 0) {
      return '$n<0';
    }
    if (n == 0) {
      return '$n=0';
    }
    final list = List.generate(n.toInt() + 1, (index) => index);
    final sum = list.reduce((value, element) => value + element);
    final str = list.join('+');
    return '$str = $sum';
  }
}