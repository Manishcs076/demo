import 'package:flutter/material.dart';
import 'package:portfolio/ui/widgets/custom_widgets/call_to_action_desktop_tablet/call_to_action_desktop_tablet.dart';
import 'package:portfolio/ui/widgets/custom_widgets/call_to_action_mobile/call_to_action_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CallToAction extends StatelessWidget {
  final String title;
  const CallToAction({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) {
        return CallToActionMobile(title: title);
      },
      tablet: (BuildContext context) {
        return CallToActionDesktopTablet(title: title);
      },
    );
  }
}
