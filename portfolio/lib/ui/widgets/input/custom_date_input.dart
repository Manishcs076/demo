/*
Main author: Manish
This class is used to get small useful functions througout the app
*/

import 'package:flutter/material.dart';

import 'package:portfolio/constants/app_font.dart';
import 'package:portfolio/ui/widgets/card/custom_card.dart';

class CustomDateInput extends StatelessWidget {
  const CustomDateInput({
    Key? key,
    this.value,
    this.onTap,
    this.onDateSelected,
    required this.hintText,
  }) : super(key: key);

  final String? value;
  final String hintText;
  final Function()? onTap;
  final Function(DateTime date)? onDateSelected;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      onTap: onTap,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Row(
        children: [
          Text(
            value != null && value!.isNotEmpty ? value! : hintText,
            style: AppFont.textStyleSmall(),
          ),
          const Spacer(),
          // Icon(
          //   Icons.calendar_today_outlined,
          //   size: 20,
          // )
          // SvgPicture.asset(
          //   "assets/images/calendar_icon.svg",
          //   height: 20,
          // )
        ],
      ),
    );
  }
}
