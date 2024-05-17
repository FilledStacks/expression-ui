import 'package:device_preview/device_preview.dart';
import 'package:expression_ui_example/app/app.bottomsheets.dart';
import 'package:expression_ui_example/app/app.dialogs.dart';
import 'package:expression_ui_example/app/app.locator.dart';
import 'package:expression_ui_example/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

const bool kbEnableDevicePreview = bool.fromEnvironment(
  'RESPONSIVE',
  defaultValue: false,
);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();

  runApp(DevicePreview(
    enabled: kbEnableDevicePreview,
    builder: (_) => const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.themeView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
    );
  }
}
