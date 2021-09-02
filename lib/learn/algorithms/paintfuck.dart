class Paintfuck {
  String paintfuck(String code, int iterations, int width, int height) {
    final commands = code.replaceAll(RegExp(r'[^nesw*\[\]]'), '');
    final length = commands.length;
    final jumps = <int, int>{};
    final opens = <int>[];
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
    final state = State(width: width, height: height, jumps: jumps);

    for (var i = 0, j = 0; i < length && j < iterations; ++i, ++j) {
      i = state.executeCommand(commands[i], i);
    }

    return state.toString();
  }
}

class Pointer {
  Pointer(this.width, this.height, [this.x = 0, this.y = 0]);

  final int width;
  final int height;
  int x;
  int y;

  void up() => y = (y - 1 + height) % height;

  void down() => y = (y + 1) % height;

  void right() => x = (x - 1 + width) % width;

  void left() => x = (x + 1) % width;

  @override
  String toString() => '{x:$x, y:$y}';
}

class DataGrid {
  DataGrid(this.width, this.height)
      : grid = List.generate(height, (_) => List.generate(width, (_) => 0, growable: false), growable: false);

  final int width;
  final int height;

  final List<List<int>> grid;

  int operator [](Pointer pointer) => grid[pointer.y][pointer.x];

  void operator []=(Pointer pointer, int value) => grid[pointer.y][pointer.x] = value;

  @override
  String toString() => grid.map((row) => row.join()).join('\r\n');
}

class State {
  State({required this.width, required this.height, required this.jumps})
      : pointer = Pointer(width, height),
        dataGrid = DataGrid(width, height);

  final int width;
  final int height;
  final Map<int, int> jumps;

  final Pointer pointer;
  final DataGrid dataGrid;

  int executeCommand(String command, int ip) {
    switch (command) {
      case 'n':
        pointer.up();
        break;

      case 's':
        pointer.down();
        break;

      case 'e':
        pointer.right();
        break;

      case 'w':
        pointer.left();
        break;

      case '*':
        dataGrid[pointer] ^= 1;
        break;

      case '[':
        if (dataGrid[pointer] == 0) {
          ip = jumps[ip]!;
        }
        break;

      case ']':
        if (dataGrid[pointer] != 0) {
          ip = jumps[ip]!;
        }
        break;
    }

    return ip;
  }

  @override
  String toString() => dataGrid.toString();
}
