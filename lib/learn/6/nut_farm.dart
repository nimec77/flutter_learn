class NutFarm {
  List<int> shakeTree(List<String> tree) {
    final nuts = List.filled(tree.first.length, 0);
    for (final level in tree) {
      for (var i = 0; i < level.length; ++i) {
        switch (level[i]) {
          case 'o':
            nuts[i]++;
            break;

          case r'\':
            if (nuts[i] > 0) {
              nuts[i]--;
              nuts[i + 1]++;
            }
            break;

          case '/':
            if (nuts[i] > 0) {
              nuts[i]--;
              nuts[i - 1]++;
            }
            break;

          case '_':
            nuts[i] = 0;
            break;
        }
      }
    }
    return nuts;
  }
}
