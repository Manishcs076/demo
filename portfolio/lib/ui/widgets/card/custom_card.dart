/*
Main author: Manish
This class is used to get small useful functions througout the app
*/

import 'package:portfolio/constants/app_color.dart';
import 'package:portfolio/constants/app_size.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    this.onTap,
    this.child,
    this.width,
    this.height,
    this.padding,
    this.disableRound = false,
    this.color,
  }) : super(key: key);

  final Widget? child;
  final double? width;
  final double? height;
  final Function()? onTap;
  final EdgeInsetsGeometry? padding;
  final bool disableRound;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: padding,
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color,
            border: Border.all(
              width: 1,
              color: AppColor.borderColor,
            ),
            borderRadius: BorderRadius.circular(
                disableRound ? 0 : AppSize.appCardBorderRadius),
          ),
          child: child,
        ),
      ),
    );
  }
}
