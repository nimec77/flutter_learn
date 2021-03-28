class WellOfIdeasEasyVersion {
  String well(List<String> x) {
    final result = x.map((e) => e == 'good' ? 1 : 0).fold<int>(0, (previousValue, element) => previousValue + element);

    if (result == 0) {
      return 'Fail!';
    }

    return result > 2 ? 'I smell a series!' : 'Publish!';
  }

  String wellBest(List<String> x) {
    switch (x.where((element) => element == 'good').length) {
      case 0:
        return 'Fail!';
      case 1:
        return 'Publish!';
      default:
        return 'I smell a series!';
    }
  }
}
