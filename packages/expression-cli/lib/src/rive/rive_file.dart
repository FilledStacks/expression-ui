import 'dart:collection';
import 'dart:io';
import 'dart:typed_data';

import 'package:expression_cli/src/core/core.dart';
import 'package:expression_cli/src/core/field_types/core_field_type.dart';
import 'package:expression_cli/src/rive/artboard.dart';
import 'package:expression_cli/src/rive/rive_core_context.dart';
import 'package:expression_cli/src/runtime/exceptions/exceptions.dart';
import 'package:expression_cli/src/runtime/runtime_header.dart';
import 'package:rive_common/utilities.dart';

Core? _readRuntimeObject(
  BinaryReader reader,
  HashMap<int, CoreFieldType> propertyToField,
) {
  int coreObjectKey = reader.readVarUint();

  Core? instance;
  switch (coreObjectKey) {
    case Artboard.typeKey:
      instance = Artboard();
      break;
  }

  while (true) {
    int propertyKey = reader.readVarUint();
    if (propertyKey == 0) {
      // Terminator. https://media.giphy.com/media/7TtvTUMm9mp20/giphy.gif
      break;
    }

    final CoreFieldType? fieldType = RiveCoreContext.coreType(propertyKey);

    if (instance == null || fieldType == null) {
      _skipProperty(reader, propertyKey, propertyToField);
    } else {
      RiveCoreContext.setObjectProperty(
        instance,
        propertyKey,
        fieldType.deserialize(reader),
      );
    }
  }
  return instance;
}

void _skipProperty(
  BinaryReader reader,
  int propertyKey,
  HashMap<int, CoreFieldType> propertyToField,
) {
  final field =
      RiveCoreContext.coreType(propertyKey) ?? propertyToField[propertyKey];
  if (field == null) {
    throw UnsupportedError(
      'Unsupported property key $propertyKey. '
      'A new runtime is likely necessary to play this file.',
    );
  }
  field.skip(reader);
}

/// Encapsulates a [RiveFile] and provides access to the list of [Artboard]
/// objects it contains.
class RiveFile {
  /// Contains header information of the [RiveFile].
  final RuntimeHeader header;

  final _artboards = <Artboard>[];

  /// Returns list of [Artboard]s present in the [RiveFile].
  List<Artboard> get artboards => _artboards;

  /// Load a list of bytes from a file on the local filesystem at [path].
  static Future<Uint8List?> fileBytes(String path) => File(path).readAsBytes();

  // List of core file types
  static final indexToField = <CoreFieldType>[
    RiveCoreContext.uintType,
    RiveCoreContext.stringType,
    RiveCoreContext.doubleType,
    RiveCoreContext.colorType
  ];

  static HashMap<int, CoreFieldType> _propertyToFieldLookup(
      RuntimeHeader header) {
    /// Property fields table of contents
    final propertyToField = HashMap<int, CoreFieldType>();

    header.propertyToFieldIndex.forEach((key, fieldIndex) {
      if (fieldIndex < 0 || fieldIndex >= indexToField.length) {
        throw RiveFormatErrorException('unexpected field index $fieldIndex');
      }

      propertyToField[key] = indexToField[fieldIndex];
    });
    return propertyToField;
  }

  RiveFile._(BinaryReader reader, this.header) {
    /// Property fields table of contents
    final propertyToField = _propertyToFieldLookup(header);

    while (!reader.isEOF) {
      final object = _readRuntimeObject(reader, propertyToField);
      if (object is Artboard) _artboards.add(object);
    }
  }

  /// Imports a Rive file from an array of bytes.
  ///
  /// Will throw [RiveFormatErrorException] if data is malformed. Will throw
  /// [RiveUnsupportedVersionException] if the version is not supported.
  factory RiveFile.import(ByteData bytes) {
    var reader = BinaryReader(bytes);
    return RiveFile._(
      reader,
      RuntimeHeader.read(reader),
    );
  }

  /// Imports a Rive file from local path
  /// 
  /// Will throw [RiveFormatErrorException] if data is malformed. Will throw
  /// [RiveUnsupportedVersionException] if the version is not supported.
  static Future<RiveFile> file(String path) async {
    final bytes = await fileBytes(path);
    return RiveFile.import(
      ByteData.view(bytes!.buffer),
    );
  }
}
