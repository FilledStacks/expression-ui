import 'package:flutter_test/flutter_test.dart';
import 'package:expression_ui_example/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('OnboardingListViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
