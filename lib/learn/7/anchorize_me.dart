class AnchorizeMe {
  String anchorize(String text) {
    return text.replaceAllMapped(RegExp(r'(http[s]?|ftp[s]?|smb|file):\/\/\$+', caseSensitive: false),
        (match) => '<a href="${match.group(0)}">${match.group(0)}</a>');
  }
}
