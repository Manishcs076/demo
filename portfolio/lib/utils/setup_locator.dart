import 'package:portfolio/services/api_service.dart';
import 'package:portfolio/services/navigator_service.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton<ApiService>(ApiService());
  locator.registerSingleton(NavigatorService());
}
