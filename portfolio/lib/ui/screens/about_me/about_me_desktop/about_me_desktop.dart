import 'package:flutter/material.dart';

class AboutMeDesktop extends StatelessWidget {
  const AboutMeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade300,
      appBar: AppBar(
        title: const Text("About me"),
      ),
      body: Container(
        color: Colors.red.shade100,
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: const Center(
          child: Text("Desktop"),
        ),
      ),
    );
  }
}
