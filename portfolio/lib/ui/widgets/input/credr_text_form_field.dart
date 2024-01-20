/*
Main author: Manish
This class is used to get small useful functions througout the app
*/

import 'package:flutter/material.dart';
import 'package:portfolio/constants/app_color.dart';
import 'package:portfolio/constants/app_size.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {Key? key,
      this.hintText,
      this.onChanged,
      this.onSaved,
      this.validator,
      this.keyboardType,
      this.isObscure = false,
      this.initialValue,
      this.maxLength,
      this.suffixIcon})
      : super(key: key);

  final String? hintText;
  final Function(String value)? onChanged;
  final Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool isObscure;
  final Widget? suffixIcon;
  final String? initialValue;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: maxLength,
      onChanged: onChanged,
      onSaved: onSaved,
      validator: validator,
      obscureText: isObscure,
      initialValue: initialValue,
      keyboardType: keyboardType,
      cursorColor: AppColor.primaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        counter: const SizedBox(),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 0,
          horizontal: AppSize.appContentHorizontalPadding,
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.borderColor),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.borderColor),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColor.primaryColor),
          borderRadius: BorderRadius.circular(AppSize.appCardBorderRadius),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColor.primaryColor),
          borderRadius: BorderRadius.circular(AppSize.appCardBorderRadius),
        ),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
