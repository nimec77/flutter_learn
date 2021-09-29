import 'dart:convert';

import 'package:crypto/crypto.dart' as crypto;

class CrackThePin {
  String crack(String hash) {
    final md5 = crypto.md5;
    for (var i = 0; i <= 99999; ++i) {
      final data = i.toString().padLeft(5, '0');
      final content = const Utf8Encoder().convert(data);
      final digest = md5.convert(content);
      if (digest.toString() == hash) {
        return data;
      }
    }
    return '';
  }
}