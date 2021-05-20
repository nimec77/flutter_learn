class GrowthOfAPopulation {
  int nbYear(int p0, double percent, int aug, int p) {
    int years = 0;
    final fractionalPercent = percent / 100;
    int peoples = p0;

    while(peoples < p) {
      peoples += (peoples * fractionalPercent + aug).toInt();
      years++;
    }

    return years;
  }
}