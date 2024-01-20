/*
Main author: Manish
This class is used to get small useful functions througout the app
*/

import 'package:flutter/material.dart';

class CustomCircleButton extends StatelessWidget {
  const CustomCircleButton({
    Key? key,
    required this.onTap,
    required this.child,
    this.height,
    this.width,
    this.color,
  }) : super(key: key);

  final Function() onTap;
  final Widget child;
  final double? height;
  final double? width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 40,
      width: width ?? 40,
      child: FloatingActionButton(
        heroTag: null,
        backgroundColor: color,
        onPressed: onTap,
        child: child,
      ),
    );
  }
}
