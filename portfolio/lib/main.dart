import 'package:portfolio/bindings/dashboard_binding.dart';
import 'package:portfolio/services/api_service.dart';
import 'package:portfolio/services/navigator_service.dart';
import 'package:portfolio/ui/screens/dashboard/dashbard.dart';
import 'package:portfolio/utils/setup_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
// import 'constants/app_color.dart';

var navigatorService = locator<NavigatorService>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  setApiServiceToProd(false);
  runApp(
    const MyApp(),
  );
}

final apiService = locator.get<ApiService>();
void setApiServiceToProd(bool value) {
  apiService.isProduction = value;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 772),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'My Portfolio',
          navigatorKey: navigatorService.navigatorKey,
          theme: ThemeData.light().copyWith(
            primaryColor: Colors.white,
            //  AppColor.primaryColor,
          ),
          initialRoute: DashboardScreen.id,
          initialBinding: DashboardBinding(),
          getPages: [
            GetPage(
              name: DashboardScreen.id,
              page: () => const DashboardScreen(),
            )
          ],
        );
      },
    );
  }
}
