/*
Main author: Swaroop
This class provides textstyles for the app
*/

import 'package:flutter/material.dart';

import 'app_color.dart';
import 'app_size.dart';

class AppFont {
  static TextStyle textStyleVeryExtraLarge(
      {bool isBold = false, Color? customColor}) {
    return TextStyle(
        fontFamily: 'ProximaNova',
        fontSize: AppSize.TEXT_XLG,
        fontWeight: isBold ? FontWeight.w600 : FontWeight.w400,
        color: customColor ?? AppColor.darkTextColor);
  }

  static TextStyle textStyleExtraLarge(
      {bool isBold = false, Color? customColor}) {
    return TextStyle(
        fontFamily: 'ProximaNova',
        fontSize: AppSize.TEXT_XXLG,
        fontWeight: isBold ? FontWeight.w600 : FontWeight.w400,
        color: customColor ?? AppColor.darkTextColor);
  }

  static TextStyle textStyleLarge(
      {bool isBold = false, bool isLight = false, Color? customColor}) {
    return TextStyle(
        fontFamily: 'ProximaNova',
        fontSize: AppSize.TEXT_LG,
        fontWeight: isBold ? FontWeight.w600 : FontWeight.w400,
        color: isLight
            ? AppColor.lightTextColor
            : customColor ?? AppColor.darkTextColor);
  }

  static TextStyle textStyleMedium(
      {bool isBold = false, bool isLight = false, Color? customColor}) {
    return TextStyle(
        fontFamily: 'ProximaNova',
        fontSize: AppSize.TEXT_NM,
        fontWeight: isBold ? FontWeight.w600 : FontWeight.w400,
        color: isLight
            ? AppColor.lightTextColor
            : customColor ?? AppColor.darkTextColor);
  }

  static TextStyle textStyleNormal(
      {bool isBold = false, bool isLight = false, isPrimary = false}) {
    return TextStyle(
        fontFamily: 'ProximaNova',
        fontSize: AppSize.TEXT_MD,
        fontWeight: isBold ? FontWeight.w600 : FontWeight.w400,
        color: isLight
            ? AppColor.lightTextColor
            : isPrimary
                ? AppColor.primaryColor
                : AppColor.darkTextColor);
  }

  static TextStyle textStyleSmall(
      {bool isBold = false, bool isLight = false, bool isPrimary = false}) {
    return TextStyle(
        fontFamily: 'ProximaNova',
        fontSize: AppSize.TEXT_SM,
        // overflow: TextOverflow.ellipsis,
        fontWeight: isBold ? FontWeight.w600 : FontWeight.w400,
        color: isLight
            ? AppColor.lightTextColor
            : isPrimary
                ? AppColor.primaryColor
                : AppColor.darkTextColor);
  }

  static TextStyle textStyleExtraSmall(
      {bool isBold = false, bool isLight = false}) {
    return TextStyle(
      fontFamily: 'ProximaNova',
      fontSize: AppSize.TEXT_XS,
      fontWeight: isBold ? FontWeight.w600 : FontWeight.w400,
    );
  }
}
