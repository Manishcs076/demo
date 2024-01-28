import 'package:flutter/material.dart';
import 'package:portfolio/ui/widgets/custom_widgets/navigation_bar/app_navbar_logo.dart';

class AppNavigationBarMobile extends StatelessWidget {
  const AppNavigationBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.shade100,
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
            ),
          ),
          const AppNavBarLogo()
        ],
      ),
    );
  }
}
