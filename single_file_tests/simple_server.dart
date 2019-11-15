#!/usr/bin/env dart

import 'dart:io';

main() async {
  var server = await HttpServer.bind(InternetAddress.loopbackIPv4, 8080);
  print("Serving at ${server.address}:${server.port}");
  await for (HttpRequest request in server) {
    request.response
      ..headers.contentType = new ContentType("text", "plain", charset: "utf-8")
      ..write('Hello, World!')
      ..close();
  }
}