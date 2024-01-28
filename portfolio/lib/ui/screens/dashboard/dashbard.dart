import 'package:flutter/material.dart';
import 'package:portfolio/ui/screens/dashboard/desktop_dashboard/dashboard_desktop.dart';
import 'package:portfolio/ui/screens/dashboard/mobile_dashboard/dashboard_mobile.dart';
import 'package:portfolio/ui/screens/dashboard/tablet_dashboard/dashboard_tablet.dart';
import 'package:portfolio/ui/screens/dashboard/watch_dashboard/dashboard_watch.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DashboardScreen extends StatelessWidget {
  static const String id = "/dashboard_screen";
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const DashboardMobile(),
      tablet: (BuildContext context) => const DashboardTablet(),
      desktop: (BuildContext context) => const DashboardDesktop(),
      watch: (BuildContext context) => const DashboardWatch(),
    );
  }
}
