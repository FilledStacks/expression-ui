import 'package:rive/rive.dart';

extension TextExtension on Artboard {
  TextValueRun? textRun(String name) => component<TextValueRun>(name);
}
