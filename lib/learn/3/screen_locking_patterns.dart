class ScreenLockingPatterns {
  final board = <String, List<String>>{
    'A': ['B', 'D', 'E', 'F', 'H'],
    'C': ['B', 'F', 'E', 'D', 'H'],
    'I': ['F', 'H', 'E', 'D', 'B'],
    'G': ['D', 'H', 'E', 'F', 'B'],
    'B': ['A', 'C', 'E', 'D', 'F', 'G', 'I'],
    'F': ['C', 'I', 'E', 'B', 'H', 'G', 'A'],
    'H': ['G', 'I', 'E', 'D', 'F', 'C', 'A'],
    'D': ['A', 'G', 'E', 'B', 'H', 'C', 'I'],
    'E': ['A', 'B', 'C', 'D', 'F', 'G', 'H', 'I'],
  };

  final passOvers = <String, List<String>>{
    'A': ['C', 'B', 'I', 'E', 'G', 'D'],
    'C': ['A', 'B', 'G', 'E', 'I', 'F'],
    'I': ['C', 'F', 'A', 'E', 'G', 'H'],
    'G': ['A', 'D', 'C', 'E', 'I', 'H'],
    'B': ['H', 'E'],
    'H': ['B', 'E'],
    'D': ['F', 'E'],
    'F': ['D', 'E'],
  };

  int countPatternsFrom(String f, int l) {
    if (l <= 0 || l > 9) {
      return 0;
    }

    final visited = List<bool>.generate(9, (_) => false);

    return calc(visited, f, l);
  }

  int calc(List<bool> visited, String start, int length) {
    if (length == 0) {
      return 0;
    }
    if (length == 1) {
      return 1;
    }
    int result = 0;
    visited[toIndex(start)] = true;
    final neighbours = board[start]!;
    for (int i = 0; i < neighbours.length; i++) {
      if (!visited[toIndex(neighbours[i])]) {
        result += calc(visited, neighbours[i], length - 1);
      }
    }
    if (passOvers.containsKey(start)) {
      final passOver = passOvers[start]!;
      for (int i = 0; i < passOver.length / 2; i++) {
        final target = passOver[i * 2];
        final condition = passOver[i * 2 + 1];
        if (visited[toIndex(condition)] && !visited[toIndex(target)]) {
          result += calc(visited, target, length - 1);
        }
      }
    }

    visited[toIndex(start)] = false;

    return result;
  }

  int toIndex(String str) {
    return str.codeUnitAt(0) - 'A'.codeUnitAt(0);
  }
}
