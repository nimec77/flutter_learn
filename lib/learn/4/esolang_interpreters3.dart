class EsolangInterpreters3 {
  String paintfuck(String code, int iterations, int width, int height) {
    final jumps = <int, int>{};
    final opens = <int>[];
    final grid = List.generate(height, (_) => List.generate(width, (_) => 0));

    final commands = code.replaceAll(RegExp(r'[^nesw*\[\]]'), '');
    final length = commands.length;
    for (var i = 0; i < length; ++i) {
      final command = commands[i];
      if (command == '[') {
        opens.add(i);
      } else if (command == ']') {
        final j = opens.removeLast();
        jumps[i] = j;
        jumps[j] = i;
      }
    }
    for (var i = 0, j = 0, x = 0, y = 0; j < iterations && i < length; ++i, ++j) {
      final command = commands[i];
      switch (command) {
        case 'n':
          y = (y - 1 + height) % height;
          break;

        case 'w':
          x = (x - 1 + width) % width;
          break;

        case 's':
          y = (y + 1) % height;
          break;

        case 'e':
          x = (x + 1) % width;
          break;

        case '*':
          grid[y][x] ^= 1;
          break;

        case '[':
          if (grid[y][x] == 0) {
            i = jumps[i]!;
          }
          break;

        case ']':
          if (grid[y][x] != 0) {
            i = jumps[i]!;
          }
      }
    }
    return grid.map((row) => row.join('')).join('\r\n');
  }
}
