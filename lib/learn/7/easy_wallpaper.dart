class EasyWallpaper {
  String wallpaper(double l, double w, double h) {
    if (l == 0.0 || w == 0.0 || h == 0.0) {
      return 'zero';
    }
    final numbers = [
      'zero',
      'one',
      'two',
      'three',
      'four',
      'five',
      'six',
      'seven',
      'eight',
      'nine',
      'ten',
      'eleven',
      'twelve',
      'thirteen',
      'fourteen',
      'fifteen',
      'sixteen',
      'seventeen',
      'eighteen',
      'nineteen',
      'twenty',
    ];
    const rollArea = 5.2;
    final area = (l * h + w * h) * 2.3;

    final rolls = (area / rollArea).ceil();
    if (rolls > 20) {
      return 'zero';
    }

    return numbers[rolls];
  }
}
