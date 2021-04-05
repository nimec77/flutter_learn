class AlternateCapitalization {
  List<String> capitalize(String x) {
    final evens = StringBuffer();
    final odds = StringBuffer();
    for (int i = 0; i < x.length; i++) {
      if (i.isOdd) {
        odds.write(x[i].toUpperCase());
        evens.write(x[i]);
      } else {
        odds.write(x[i]);
        evens.write(x[i].toUpperCase());
      }
    }
    return [evens.toString(), odds.toString()];
  }
}