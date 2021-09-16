class Binaries {
  String code(String s) {
    return s.split('').map(int.parse).map((e) => e.toRadixString(2)).map((bin) {
      final code = '${'0' * (bin.length - 1)}1';
      return '$code$bin';
    }).join();
  }

  String decode(String str) {
    final result = StringBuffer();
    var count = 0;
    for (var i = 0; i < str.length; ++i) {
      if (str[i] == '0') {
        count++;
        continue;
      }
      ++count;
      ++i;
      final dig = int.parse(str.substring(i, i + count), radix: 2);
      result.write(dig);
      i = i + count - 1;
      count = 0;
    }
    return result.toString();
  }

}
