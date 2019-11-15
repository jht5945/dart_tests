#!/usr/bin/env dart

import 'dart:io';

main() async {
  // run
  var results = await Process.run('ls', ['-l']);
  print(results.stdout);

  // start
  var process = await Process.start('ls', ['-l']);
  var exitCode = await process.exitCode;
  print('exit code: $exitCode');
}