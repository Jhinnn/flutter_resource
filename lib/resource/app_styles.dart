
// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_resource/gen/fonts.gen.dart';
import 'package:flutter_resource/resource/resource.dart';

class AppStyles {
   _TextStyle style = _TextStyle();
}

class _TextStyle {
  TextStyle headingTs = TextStyle(fontSize: 30, fontWeight: FontWeight.w600,color: Resource.appColors.text.heading,fontFamily: FontFamily.aaKaiSong,letterSpacing: -1);
  TextStyle subheadingTs = TextStyle(fontSize: 40, fontWeight: FontWeight.w300,color: Resource.appColors.text.subheading);
  TextStyle appBarTs = TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Resource.appColors.text.subheading);
}
