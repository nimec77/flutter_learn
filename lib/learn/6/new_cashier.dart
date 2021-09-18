const menu = ['Burger', 'Fries', 'Chicken', 'Pizza', 'Sandwich', 'Onionrings', 'Milkshake', 'Coke'];

class NewCashier {
  String getOrder(final String input) {
    final result = <String>[];
    var str = input;
    for (var i = 0; str.isNotEmpty && i < menu.length; ++i) {
      final menuItem = menu[i].toLowerCase();
      while (str.contains(menuItem)) {
        result.add(menu[i]);
        str = str.replaceFirst(menuItem, '');
      }
    }
    return result.join(' ');
  }

  String getOrder2(final String input) {
    final mapResult = <int, int>{};
    final result = <String>[];

    var index = 0;
    while(index < input.length) {
      for (var i = 0; i < menu.length; ++i) {
        final menuItem = menu[i].toLowerCase();
        if (input.startsWith(menuItem, index)) {
          index += menuItem.length;
          mapResult[i] = (mapResult[i] ?? 0) + 1;
        }
      }
    }

    for (var i = 0; i < menu.length; ++i) {
      if (mapResult.containsKey(i)) {
        result.addAll(List.generate(mapResult[i]!, (_) => menu[i]));
      }
    }

    return result.join(' ');
  }

  String getOrderBest(final String input) {
    final result = <String>[];

    for (final menuItem in menu) {
      final regExp = RegExp(menuItem.toLowerCase());
      final matches = regExp.allMatches(input);
      result.addAll(List.generate(matches.length, (_) => menuItem));
    }

    return result.join(' ');
  }
}
