#!/usr/bin/env dart

import 'dart:io';

main() {
  if (stdioType(stdout) == StdioType.terminal) {
    print("Is term.");
  } else {
    print("Not term.");
  }
}