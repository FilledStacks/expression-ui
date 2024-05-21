import 'dart:io' show Directory, File;
import 'dart:typed_data';

import 'package:path/path.dart' as path;

/// Loads a Rive runtime file from assets subfolder and returns ByteData
ByteData loadFileByteData(String fileName) {
  final fileFullPath = loadFileFullPath(fileName);
  final fileBytes = File(fileFullPath).readAsBytesSync();
  return ByteData.view(fileBytes.buffer);
}

/// FInds the rive runtime file from assets subfolder and
/// returns full path to the file
String loadFileFullPath(String fileName) {
  if (path.extension(fileName) != '.riv') {
    throw Exception('Not a Rive runtime file');
  }

  final directory = Directory.current.path;
  final fullPath = path.join(directory, 'test', 'assets', fileName);
  return fullPath;
}
