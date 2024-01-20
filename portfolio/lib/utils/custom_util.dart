/*
Main author: Manish
This class is used to get small useful functions througout the app
*/

import 'dart:io' show Platform;
// import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';

class CustomUtil {
  static void hideKeypad(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  static String? getPlatform() {
    if (Platform.isAndroid) return 'Android';
    if (Platform.isIOS) return 'IOS';
    return null;
  }

  // static Future<String?> getDeviceName() async {
  //   DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  //   if (Platform.isAndroid) {
  //     AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
  //     return androidInfo.model;
  //   }
  //   if (Platform.isIOS) {
  //     IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
  //     return iosInfo.utsname.machine;
  //   }
  // }

  static String convertToCamelCase(String text) {
    List<String> strList = text.split(' ');

    if (strList.contains('/')) {
      strList.remove('/');
    }

    String formatedName = '';
    int count = 0;
    for (var i in strList) {
      List<String> char = i.split('');
      String firstChar = '';
      if (count == 0) {
        firstChar = char.first.toLowerCase();
      } else {
        firstChar = char.first.toUpperCase();
      }

      char.removeAt(0);
      char.insert(0, firstChar);

      formatedName = formatedName + char.join('');
      count++;
    }
    return formatedName;
  }
}
