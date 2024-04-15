import 'package:expression_ui_example/app/app.locator.dart';
import 'package:expression_ui_example/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void navigateToNextView() {
    _navigationService.replaceWithCrossFrameworkView();
  }
}
