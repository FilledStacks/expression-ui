import 'package:expression_cli/src/rive/rive_file.dart';
import 'package:test/test.dart';

import 'helpers/load_file.dart';

void main() {
  late RiveFile riveFile;

  group('RiveFile.file', () {
    setUp(() async {
      riveFile = await RiveFile.file(loadFileFullPath('expressionui.riv'));
    });

    test('contains correct number of artboards', () {
      expect(riveFile.artboards.length, 8);
    });

    test('extracts artboard names correctly', () {
      expect(riveFile.artboards[0].name, equals('composable-view'));
      expect(riveFile.artboards[1].name, equals('cross-framework-view'));
      expect(riveFile.artboards[2].name, equals('counter-view'));
      expect(riveFile.artboards[3].name, equals('expression-ui-button'));
      expect(riveFile.artboards[4].name, equals('intro-view'));
      expect(riveFile.artboards[5].name, equals('developer-friendly-view'));
      expect(riveFile.artboards[6].name, equals('frameworks-animation'));
      expect(riveFile.artboards[7].name, equals('pixel-perfection-view'));
    });
  });

  group('RiveFile.import', () {
    setUp(() {
      riveFile = RiveFile.import(loadFileByteData('expressionui.riv'));
    });

    test('contains correct number of artboards', () {
      expect(riveFile.artboards.length, 8);
    });

    test('extracts artboard names correctly', () {
      expect(riveFile.artboards[0].name, equals('composable-view'));
      expect(riveFile.artboards[1].name, equals('cross-framework-view'));
      expect(riveFile.artboards[2].name, equals('counter-view'));
      expect(riveFile.artboards[3].name, equals('expression-ui-button'));
      expect(riveFile.artboards[4].name, equals('intro-view'));
      expect(riveFile.artboards[5].name, equals('developer-friendly-view'));
      expect(riveFile.artboards[6].name, equals('frameworks-animation'));
      expect(riveFile.artboards[7].name, equals('pixel-perfection-view'));
    });
  });
}
