class CountTheDigit {
  int nbDig(int n, int d) {
    return List.generate(n + 1, (index) => index * index)
        .map((element) => digitInElement(element, d))
        .reduce((value, element) => value + element);
  }

  int digitInElement(int element, int d) {
    if (element == d) {
      return 1;
    }
    int value = element;
    int result = 0;
    while (value > 0) {
      final digit = value % 10;
      if (digit == d) {
        result++;
      }
      value ~/= 10;
    }
    return result;
  }

  int nDigOther(int n, int d) {
    return List.generate(n + 1, (index) => index * index)
        .expand((element) => element.toString().split(''))
        .where((element) => element == d.toString())
        .length;
  }

  int nDigBest(int n, int d) {
    return d.toString().allMatches(List.generate(n + 1, (index) => (index * index).toString()).join()).length;
  }
}
