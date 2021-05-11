class FindNextHigherNumber {
  int nextHigher(int n) {
    final rightOne = n & -n;
    final nextHigherOneBit = n + rightOne;
    int rightOnesPattern = n ^ nextHigherOneBit;
    rightOnesPattern = rightOnesPattern ~/ rightOne;
    rightOnesPattern >>= 2;

    return nextHigherOneBit | rightOnesPattern;
  }

  int nextHigherBest(int n) {
    int result = n + 1;
    final oneBits = '1'.allMatches(n.toRadixString(2)).length;
    while ('1'.allMatches(result.toRadixString(2)).length != oneBits) {
      result++;
    }
    return result;
  }
}
