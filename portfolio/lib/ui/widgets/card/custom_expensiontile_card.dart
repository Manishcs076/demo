/*
Main author: Manish
This class is used to get small useful functions througout the app
*/

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/custom_util.dart';

// ignore: must_be_immutable
class CustomExpensionTileCard extends StatefulWidget {
  CustomExpensionTileCard(
      {Key? key,
      required this.text,
      required this.children,
      required this.expensionTileColor,
      required this.expensionTileBorederColor,
      this.controlAffinity,
      this.elevation

      //required this.onExpansionChanged,
      })
      : super(key: key);

  String text;
  List<Widget> children = <Widget>[];
  Color expensionTileColor;
  Color expensionTileBorederColor;
  ListTileControlAffinity? controlAffinity;
  double? elevation;

  //void Function(bool) onExpansionChanged;

  @override
  // ignore: library_private_types_in_public_api
  _CustomExpensionTileCardState createState() =>
      _CustomExpensionTileCardState();
}

class _CustomExpensionTileCardState extends State<CustomExpensionTileCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4).r,
      child: GestureDetector(
        onTap: () {
          CustomUtil.hideKeypad(context);
        },
        child: Card(
          elevation: widget.elevation,
          shape: RoundedRectangleBorder(
            // ignore: use_full_hex_values_for_flutter_colors
            side: BorderSide(
                color: widget.expensionTileBorederColor, width: 1.0.r),
            borderRadius: BorderRadius.circular(5.0).r,
          ),
          // ignore: prefer_const_constructors
          color: widget.expensionTileColor,
          borderOnForeground: true,
          child: Theme(
            data: ThemeData().copyWith(
              dividerColor: Colors.transparent,
            ),
            child: ExpansionTile(
              key: widget.key,
              // onExpansionChanged: widget.onExpansionChanged,
              // ignore: use_full_hex_values_for_flutter_colors
              iconColor: const Color(0XFFCACACA99),
              title: Text(
                widget.text,
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0XFF333333),
                ),
              ),
              children: widget.children,
            ),
          ),
        ),
      ),
    );
  }
}
