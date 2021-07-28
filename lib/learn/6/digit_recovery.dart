class DigitRecovery {
  static const alph = {
    0: 'ZERO',
    1: 'ONE',
    2: 'TWO',
    3: 'THREE',
    4: 'FOUR',
    5: 'FIVE',
    6: 'SIX',
    7: 'SEVEN',
    8: 'EIGHT',
    9: 'NINE',
  };

  String recover(String str) {
    var tmpStr = str;
    var result = '';
    while(tmpStr.length > 2) {
      for (final entry in alph.entries) {
        if (entry.value.length <= tmpStr.length) {
          if (checkLetters(tmpStr.substring(0, entry.value.length), entry.value)) {
            result += entry.key.toString();
          }
        }
      }
      tmpStr = tmpStr.substring(1);
    }

    return result.isEmpty ? 'No digits found' : result;
  }

  bool checkLetters(String str, String num) {
    var tmpNum = num;
    for (final el in str.split('')) {
      if (tmpNum.contains(el)) {
        tmpNum = tmpNum.replaceFirst(el, '');
      } else {
        return false;
      }
    }
    return tmpNum.isEmpty;
  }
}
