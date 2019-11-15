#!/usr/bin/env dart

import 'dart:io';
import 'dart:convert';

main() async {
  var url = Uri.parse('https://hatter.ink/ip/ip.jsonp');
  var httpClient = new HttpClient();
  httpClient.connectionTimeout = const Duration(seconds: 6);
  var request = await httpClient.getUrl(url);
  var response = await request.close();
  var data = await response.transform(utf8.decoder).toList();
  var body = data.join('');
  print(body);
  httpClient.close();
}
