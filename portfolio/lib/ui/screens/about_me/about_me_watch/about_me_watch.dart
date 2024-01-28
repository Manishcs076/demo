import 'package:flutter/material.dart';

class AboutMeWatch extends StatelessWidget {
  const AboutMeWatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade300,
      appBar: AppBar(
        title: const Text("About me"),
      ),
      body: Container(
        color: Colors.green.shade100,
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: const Center(
          child: Text("Watch"),
        ),
      ),
    );
  }
}
