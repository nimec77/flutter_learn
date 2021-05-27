class GrowthOfAPopulation {
  int nbYear(int p0, double percent, int aug, int p) {
    var years = 0;
    final fractionalPercent = percent / 100;
    var peoples = p0;

    while(peoples < p) {
      peoples += (peoples * fractionalPercent + aug).toInt();
      years++;
    }

    return years;
  }
}