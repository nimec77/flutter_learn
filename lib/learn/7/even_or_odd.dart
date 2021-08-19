class EvenOrOdd {
  String evenOrOdd(String number) {
    final numbers = number.split('').map(int.parse);
    var evenSum = 0;
    var oddSum = 0;
    for (final item in numbers) {
      if (item.isEven) {
        evenSum += item;
      } else {
        oddSum += item;
      }
    }
    if (evenSum > oddSum) {
      return 'Even is greater than Odd';
    } else if (evenSum == oddSum) {
      return 'Even and Odd are the same';
    }

    return 'Odd is greater than Even';
  }
}