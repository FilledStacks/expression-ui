import 'dart:collection';

/// Simple and cheap implementation of `rive_flutter` core.
///
/// https://github.com/rive-app/rive-flutter/blob/master/lib/src/core/core.dart
abstract class Core {
  static const int missingId = -1;
  int get coreType;
  int id = missingId;
}

/// Simple and cheap implementatin of `rive_flutter` import stack.
///
/// Stack to help the RiveFile locate latest Core created of a
/// certain type.
///
/// https://github.com/rive-app/rive-flutter/blob/master/lib/src/core/core.dart
class ImportStack {
  final _latests = HashMap<int, Core>();
  T? latest<T extends Core>(int coreType) {
    var latest = _latests[coreType];
    if (latest is T) {
      return latest;
    }
    return null;
  }

  bool makeLatest(int coreType, Core? coreObject) {
    if (coreObject != null) {
      _latests[coreType] = coreObject;
    } else {
      _latests.remove(coreType);
    }
    return true;
  }
}
