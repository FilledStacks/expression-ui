import 'package:rive/rive.dart';

class ExpressionManager {
  static ExpressionManager? _instance;

  static ExpressionManager get instance {
    _instance ??= ExpressionManager();
    return _instance!;
  }
  late RiveFile _riveFile;
  RiveFile get riveFile => _riveFile;
  
}
