import 'package:expression_cli/src/services/brew_service.dart';
import 'package:expression_cli/src/services/logger_service.dart';
import 'package:expression_cli/src/services/process_service.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.I;

void setupLocator() {
  locator.registerLazySingleton(() => LoggerService());
  locator.registerLazySingleton(() => ProcessService());
  locator.registerLazySingleton(() => BrewService());
}
