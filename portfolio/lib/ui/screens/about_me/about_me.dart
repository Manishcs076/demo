import 'package:flutter/material.dart';
import 'package:portfolio/ui/screens/about_me/about_me_desktop/about_me_desktop.dart';
import 'package:portfolio/ui/screens/about_me/about_me_mobile/about_me_mobile.dart';
import 'package:portfolio/ui/screens/about_me/about_me_tablet/about_me_tablet.dart';
import 'package:portfolio/ui/screens/about_me/about_me_watch/about_me_watch.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const AboutMeMobile(),
      tablet: (BuildContext context) => const AboutMeTablet(),
      desktop: (BuildContext context) => const AboutMeDesktop(),
      watch: (BuildContext context) => const AboutMeWatch(),
    );
  }
}
