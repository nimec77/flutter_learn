class PrinterError {
  String printerError(String s) {
    final error = RegExp('[n-z]').allMatches(s).length;
    return '$error/${s.length}';
  }
}
