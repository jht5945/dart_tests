import 'dart:convert';
import 'package:crypto/crypto.dart';

// https://pub.dev/packages/crypto
main() async {
  var bytes = utf8.encode("Hello World!");

  var digest = sha256.convert(bytes);

  // print("Digest as bytes: ${digest.bytes}");
  print("Digest as hex string: $digest");
}
