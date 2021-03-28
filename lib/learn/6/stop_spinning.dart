class StopSpinning {
  String spinWords(String str) {
    final split = str.split(' ');
    final spin = split.map((word) => word.length >= 5 ? word.split('').reversed.join() : word);

    return spin.join(' ');
  }
}
