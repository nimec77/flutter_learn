class PartsOfAList {
  List<List<String>> partlist(List<String> arr) {
    return List.generate(arr.length - 1, (index) {
      return [
        arr.take(index + 1).join(' '),
        arr.skip(index + 1).join(' '),
      ];
    });
  }
}
