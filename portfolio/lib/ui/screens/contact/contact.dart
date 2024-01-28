import 'package:flutter/material.dart';
import 'package:portfolio/ui/screens/contact/contact_desktop/contact_desktop.dart';
import 'package:portfolio/ui/screens/contact/contact_mobile/contact_mobile.dart';
import 'package:portfolio/ui/screens/contact/contact_tablet/contact_tablet.dart';
import 'package:portfolio/ui/screens/contact/contact_watch/contact_watch.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const ContactMobile(),
      tablet: (BuildContext context) => const ContactTablet(),
      desktop: (BuildContext context) => const ContactDesktop(),
      watch: (BuildContext context) => const ContactWatch(),
    );
  }
}
