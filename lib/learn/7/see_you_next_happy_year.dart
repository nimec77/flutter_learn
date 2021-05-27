class SeeYouNextHappyYear {
  int nextHappyYear(int year) {
    var newYear = year;
    do {
      newYear++;
    } while (!isHappyYear(newYear));
    return newYear;
  }

  bool isHappyYear(int year) {
    final str = year.toString().split('');
    return str.length == str.toSet().length;
  }
}
