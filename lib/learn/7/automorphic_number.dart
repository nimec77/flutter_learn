class AutomorphicNumber {
  String automorphic(int n) {
    return (n * n).toString().endsWith(n.toString()) ? 'Automorphic' : 'Not!!';
  }
}