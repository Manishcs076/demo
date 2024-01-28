import 'package:flutter/material.dart';

class DashboardTablet extends StatelessWidget {
  const DashboardTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 246, 236, 237),
      child: const Column(
        children: [
          Text(
            "Tablet View",
          ),
        ],
      ),
    );
  }
}
