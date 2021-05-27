class MultiplesOf3Or5 {
  int solution(int n) {
    if (n <= 3) {
      return 0;
    }
    var sum = 3;
    for (var i = 5; i < n; i++) {
      if (i % 3 == 0 || i % 5 == 0) {
        sum += i;
      }
    }
    return sum;
  }
}
