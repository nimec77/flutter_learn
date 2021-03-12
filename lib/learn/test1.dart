class Test1 {
  String stockSummary(List<String> lstOfArt, dynamic lstOf1stLetter) {
    if (lstOfArt.isEmpty || (lstOf1stLetter as Iterable).isEmpty) {
      return '';
    }
    final List<String> listOfResult = (lstOf1stLetter as Iterable<String>)
        .map((letter) => '($letter : ${_summaryByLetter(letter, lstOfArt)})')
        .toList();
    // for (final letter in lstOf1stLetter) {
    //   listOfResult.add('($letter : ${_summaryByLetter(letter.toString(), lstOfArt)})');
    // }
    return listOfResult.join(' - ');
  }

  int _summaryByLetter(String letter, List<String> lstOfArt) {
    final result = lstOfArt.where((element) => element.startsWith(letter)).map((item) => item.split(' ')).fold<int>(0,
        (value, element) {
      if (element.isEmpty) {
        return 0;
      }
      return value + int.parse(element[1]);
    });

    return result;
  }
}
