class ConvertAHexStringToRgb {
  Map<String, int> hexToRgb(String hex) {
    final r = hex.substring(1, 3);
    final g = hex.substring(3, 5);
    final b = hex.substring(5);

    return {'r': int.parse(r, radix: 16), 'g': int.parse(g, radix: 16), 'b': int.parse(b, radix: 16)};
  }
}