class NegationOfAValue {
  bool negationValue(String str, {required bool val}) {
    return str.length % 2 != 0 ? !val : val;
  }

  bool negationValueBest(String str, {required bool val}) {
    return str.length.isEven == val;
  }
}
