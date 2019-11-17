#!/usr/bin/env dart

import 'dart:io';

// https://juejin.im/post/5d7f4c35f265da03c50341df
void main() async{
  File file = new File('test.txt');
  IOSink isk = file.openWrite(mode: FileMode.append);

  isk.write('Line 1');
  isk.writeln(', also line 1');
  isk.writeln('Line 2');
  await isk.close();
  print('Done!');
}