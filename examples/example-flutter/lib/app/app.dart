import 'package:expression_ui_example/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:expression_ui_example/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:expression_ui_example/ui/views/cross_framework/cross_framework_view.dart';
import 'package:expression_ui_example/ui/views/home/home_view.dart';
import 'package:expression_ui_example/ui/views/startup/startup_view.dart';
import 'package:expression_ui_example/ui/views/theme/theme_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:expression_ui_example/ui/views/developer_friendly/developer_friendly_view.dart';
import 'package:expression_ui_example/ui/views/pixel_perfection/pixel_perfection_view.dart';
import 'package:expression_ui_example/ui/views/composable/composable_view.dart';
import 'package:expression_ui_example/ui/views/onboarding_list/onboarding_list_view.dart';
import 'package:expression_ui_example/ui/views/onboarding_details/onboarding_details_view.dart';
import 'package:expression_ui_example/services/firestore_onboarding_api_service.dart';
// @stacked-import

@StackedApp(routes: [
  MaterialRoute(page: HomeView),
  MaterialRoute(page: StartupView),
  MaterialRoute(page: CrossFrameworkView),
  MaterialRoute(page: DeveloperFriendlyView),
  MaterialRoute(page: PixelPerfectionView),
  MaterialRoute(page: ComposableView),
  MaterialRoute(page: ThemeView),
  MaterialRoute(page: OnboardingListView),
  MaterialRoute(page: OnboardingDetailsView),
// @stacked-route
], dependencies: [
  LazySingleton(classType: BottomSheetService),
  LazySingleton(classType: DialogService),
  LazySingleton(classType: NavigationService),
  LazySingleton(classType: FirestoreOnboardingApiService),
// @stacked-service
], bottomsheets: [
  StackedBottomsheet(classType: NoticeSheet),
  // @stacked-bottom-sheet
], dialogs: [
  StackedDialog(classType: InfoAlertDialog),
  // @stacked-dialog
])
class App {}
