class Largest5DigitNumberInASeries {
  int solution(String digits) {
    int max = int.parse(digits.substring(0, 5));
    for (int i = 1; i <= digits.length - 5; i++) {
      final digit = int.parse(digits.substring(i, i + 5));
      if (max < digit) {
        max = digit;
      }
    }

    return max;
  }
}
