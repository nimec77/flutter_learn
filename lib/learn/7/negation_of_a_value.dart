class NegationOfAValue {
  bool negationValue(String str, bool val) {
    return str.length % 2 != 0 ? !val : val;
  }

  bool negationValueBest(String str, bool val) {
    return str.length.isEven == val;
  }
}
