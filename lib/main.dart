import 'dart:io';
import 'package:contacts_app/android/android.app.dart';
import 'package:contacts_app/ios/ios.app.dart';
import 'package:flutter/material.dart';

void main() {
  Platform.isIOS ? runApp(IOSApp()) : runApp(AndroidApp());
  //runApp(IOSApp());
}
