import 'package:expression_cli/src/core/core.dart';

class Artboard extends Core {
  static const int typeKey = 1;
  String? name;

  Artboard({this.name});

  @override
  String toString() => 'Artboard(name: $name)';
  
  @override
  int get coreType => Artboard.typeKey;
}
