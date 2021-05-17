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
}
