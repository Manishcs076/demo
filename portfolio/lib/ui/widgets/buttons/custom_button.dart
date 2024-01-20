/*
Main author: Manish
This class is used to get small useful functions througout the app
*/

import 'package:portfolio/constants/app_color.dart';
import 'package:portfolio/constants/app_font.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onTap,
    required this.text,
    this.width,
    this.height,
    this.bgColor,
    this.isLight,
    this.borderColor,
    this.borderRadius,
  }) : super(key: key);

  final String text;
  final Function() onTap;
  final double? width;
  final double? height;
  final Color? bgColor;
  final Color? borderColor;
  final bool? isLight;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onTap,
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(vertical: 10)),
          backgroundColor:
              MaterialStateProperty.all(bgColor ?? AppColor.primaryColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 0),
              side: BorderSide(color: borderColor ?? Colors.red),
            ),
          ),
        ),
        child:
            Text(text, style: AppFont.textStyleSmall(isLight: isLight ?? true)),
      ),
    );
  }
}
