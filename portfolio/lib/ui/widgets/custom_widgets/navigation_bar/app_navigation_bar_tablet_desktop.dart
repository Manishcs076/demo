import 'package:flutter/material.dart';
import 'package:portfolio/ui/widgets/custom_widgets/navigation_bar/app_navbar_item.dart';
import 'package:portfolio/ui/widgets/custom_widgets/navigation_bar/app_navigation_bar.dart';

class AppNavigationBarTabletDesktop extends StatelessWidget {
  const AppNavigationBarTabletDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.shade100,
      height: 100,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppNavigationBar(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarItem(
                title: 'Home',
              ),
              SizedBox(
                width: 60,
              ),
              NavBarItem(
                title: 'About me',
              ),
              SizedBox(
                width: 60,
              ),
              NavBarItem(
                title: 'Work',
              ),
              SizedBox(
                width: 60,
              ),
              NavBarItem(
                title: 'Contact',
              ),
            ],
          )
        ],
      ),
    );
  }
}
