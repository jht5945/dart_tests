#!/usr/bin/env dart

import 'dart:io';
import 'dart:async';

main() async {
  //Stream<FileSystemEntity> entityList = Directory.systemTemp.list(recursive: true, followLinks: false);
  Stream<FileSystemEntity> entityList = Directory.current.list(recursive: true, followLinks: false);

  await for (FileSystemEntity entity in entityList) {
    FileSystemEntityType type = await FileSystemEntity.type(entity.path);
    String label;
    switch (type) {
      case FileSystemEntityType.directory:
        label = 'D';
        break;
      case FileSystemEntityType.file:
        label = 'F';
        break;
      case FileSystemEntityType.link:
        label = 'L';
        break;
      default:
        label = 'UNKNOWN';
    }
    print('$label: ${entity.path}');
  }
}