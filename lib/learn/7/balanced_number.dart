class BalancedNumber {
  String balancedNum(int numb) {
    final numbList = numb.toString().split('').map(int.parse);

    final size = numbList.length.isOdd ? numbList.length ~/ 2 : numbList.length ~/ 2 - 1;
    final left = numbList.take(size);
    final right = numbList.skip(numbList.length - size);

    final leftSum = left.fold<int>(0, (previousValue, element) => previousValue + element);
    final rightSum = right.fold<int>(0, (previousValue, element) => previousValue + element);

    return leftSum == rightSum ? 'Balanced' : 'Not Balanced';
  }
}