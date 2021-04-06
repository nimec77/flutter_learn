class CenturyFromYear {
  int century(int year) {
    return year ~/ 100 + (year % 100).sign;
  }

  int centuryBest(int year) {
    return (year / 100).ceil();
  }
}
