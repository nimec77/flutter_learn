class RowWeights {
  List<int> rowWeights(List<int> arr) {
    final team1 = <int>[];
    final team2 = <int>[];

    for (var i = 1; i <= arr.length; ++i) {
      if (i.isOdd) {
        team1.add(arr[i - 1]);
      } else {
        team2.add(arr[i - 1]);
      }
    }

    final team1Weights = team1.fold<int>(0, (previousValue, element) => previousValue + element);
    final team2Weights = team2.fold<int>(0, (previousValue, element) => previousValue + element);

    return [team1Weights, team2Weights];
  }

  List<int> rowWeightsBest(List<int> arr) {
    final totalWeights = [0, 0];

    for (var i = 0; i < arr.length; ++i) {
      totalWeights[i % 2] += arr[i];
    }

    return totalWeights;
  }
}