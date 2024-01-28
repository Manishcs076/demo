import 'package:flutter/material.dart';
import 'package:portfolio/ui/screens/work/work_desktop/work_desktop.dart';
import 'package:portfolio/ui/screens/work/work_mobile/work_mobile.dart';
import 'package:portfolio/ui/screens/work/work_tablet/work_tablet.dart';
import 'package:portfolio/ui/screens/work/work_watch/work_watch.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Work extends StatelessWidget {
  const Work({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const WorkMobile(),
      tablet: (BuildContext context) => const WorkTablet(),
      desktop: (BuildContext context) => const WorkDesktop(),
      watch: (BuildContext context) => const WorkWatch(),
    );
  }
}
