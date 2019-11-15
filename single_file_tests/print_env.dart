#!/usr/bin/env dart

import 'dart:io' show Platform;

main() {
  Map<String, String> envVars = Platform.environment;
  envVars.forEach((k, v) => {
    print('$k = $v')
  });
}
