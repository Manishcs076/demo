//
// Generated file. Do not edit.
//

// ignore_for_file: directives_ordering
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: depend_on_referenced_packages

import 'package:camera_web/camera_web.dart';

import 'package:flutter_keyboard_visibility_web/flutter_keyboard_visibility_web.dart';
import 'package:fluttertoast/fluttertoast_web.dart';
import 'package:geolocator_web/geolocator_web.dart';
import 'package:image_picker_for_web/image_picker_for_web.dart';
import 'package:package_info_plus_web/package_info_plus_web.dart';
import 'package:shared_preferences_web/shared_preferences_web.dart';
import 'package:smart_auth/smart_auth_web.dart';
import 'package:url_launcher_web/url_launcher_web.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

// ignore: public_member_api_docs
void registerPlugins(Registrar registrar) {
  CameraPlugin.registerWith(registrar);

  FlutterKeyboardVisibilityPlugin.registerWith(registrar);
  FluttertoastWebPlugin.registerWith(registrar);
  GeolocatorPlugin.registerWith(registrar);
  ImagePickerPlugin.registerWith(registrar);
  PackageInfoPlugin.registerWith(registrar);
  SharedPreferencesPlugin.registerWith(registrar);
  SmartAuthWeb.registerWith(registrar);
  UrlLauncherPlugin.registerWith(registrar);
  registrar.registerMessageHandler();
}
