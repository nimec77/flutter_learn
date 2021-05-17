class GradeBook {
  String getGrade(int a, int b, int c) {
    final average = (a + b + c) ~/ 3;
    if (average < 60) {
      return 'F';
    }
    if (average < 70) {
      return 'D';
    }
    if (average < 80) {
      return 'C';
    }
    if (average < 90) {
      return 'B';
    }

    return 'A';
  }

  String getGradeBest(int a, int b, int c) {
    String result = 'F';

    switch ((a + b + c) ~/ 30) {
      case 10:
      case 9:
        result = 'A';
        break;

      case 8:
        result = 'B';
        break;

      case 7:
        result = 'C';
        break;
      case 6:
        result = 'D';
        break;
    }

    return result;
  }
}
