import 'package:flutter/material.dart';

class AboutMeTablet extends StatelessWidget {
  const AboutMeTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade300,
      appBar: AppBar(
        title: const Text("About me"),
      ),
      body: Container(
        color: Colors.purple.shade100,
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: const Center(
          child: Text("Tablet"),
        ),
      ),
    );
  }
}
