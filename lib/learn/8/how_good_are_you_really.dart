
class HowGoodAreYouReally {
  bool betterThanAverage(List<int> classPoints, int yourPoints) {
    final points = [...classPoints, yourPoints];
    final sum = points.reduce((value, element) => value + element);
    final average = sum / points.length;

    return yourPoints > average;
  }
}