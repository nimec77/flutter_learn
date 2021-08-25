class NutFarm2 {
  List<int> shakeTree(List<String> tree) {
    var nuts = List.filled(tree.first.length, 0);
    for (final level in tree) {
      for (var i = 0; i < level.length; ++i) {
        if (level[i] == 'o') {
          nuts[i]++;
        } else {
          nuts = branches(nuts, level, i);
        }
      }
    }

    return nuts;
  }

  List<int> branches(List<int> nuts, String level, int i) {
    if (i == 0 || i == level.length - 1) {
      return nuts;
    }
    if (level[i] == '_') {
      nuts[i] = 0;
      return nuts;
    }
    if (level[i] != r'\' && level[i] != '/') {
      return nuts;
    }
    if (level[i] == r'\') {
      nuts[i + 1] += nuts[i];
      nuts[i] = 0;
      return branches(nuts, level, i + 1);
    }
    if (level[i] == '/' && getPrev(level, i) == r'\') {
      nuts[i] = 0;
      return nuts;
    }

    nuts[i - 1] += nuts[i];
    nuts[i] = 0;
    return branches(nuts, level, i - 1);
  }

  String getPrev(String level, int i) => i - 1 >= 0 ? level[i - 1] : ' ';
}
