import 'package:flutter/material.dart';
import 'package:portfolio/ui/widgets/custom_widgets/navigation_bar/app_navigation_bar_tablet_desktop.dart';
import 'package:portfolio/ui/widgets/custom_widgets/navigation_bar/navigation_bar_mobile/app_navigation_bar_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) {
        return const AppNavigationBarMobile();
      },
      tablet: (BuildContext context) {
        return const AppNavigationBarTabletDesktop();
      },
    );
  }
}
