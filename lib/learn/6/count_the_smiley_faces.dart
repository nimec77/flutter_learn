class CountTheSmileyFaces {
  int countSmileys(List<String> arr) {
    final exp = RegExp(r'^[:;][-~]?[)D]$');
    final matches = arr.map(exp.hasMatch).where((element) => element);
    return matches.length;
  }
}