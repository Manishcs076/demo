import 'package:flutter/material.dart';

class AboutMeMobile extends StatelessWidget {
  const AboutMeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      appBar: AppBar(
        title: const Text("About me"),
      ),
      body: Container(
        color: Colors.blue.shade100,
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: const Center(
          child: Text("Mobile"),
        ),
      ),
    );
  }
}
