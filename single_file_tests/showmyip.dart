#!/usr/bin/env dart

import 'dart:io';
import 'dart:convert';

main() async {
  final url = Uri.parse('https://hatter.ink/ip/ip.jsonp');
  final httpClient = new HttpClient();
  httpClient.connectionTimeout = const Duration(seconds: 6);
  final request = await httpClient.getUrl(url);
  final response = await request.close();
  final data = await response.transform(utf8.decoder).toList();
  final body = data.join('');
  print(body);
  httpClient.close();
}
