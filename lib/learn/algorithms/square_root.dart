class SquareRoot {
  double rectangleArea(double n, {double precision = 0.1}) {
    var height = 1.0;
    var width = n;

    while ((width - height).abs() > precision) {
      height = (height + width) / 2;
      width = n / height;
    }

    return height;
  }

  double halfDivision(double n, {double precision = 0.1}) {
    var left = 1.0;
    var right = n;

    late double approx;
    late double middle;
    do {
      middle = left + (right - left) / 2;
      approx = middle * middle;
      if (approx > n) {
        right = middle;
      } else {
        left = middle;
      }
    } while((approx - n).abs() > precision);

    return middle;
  }
}
