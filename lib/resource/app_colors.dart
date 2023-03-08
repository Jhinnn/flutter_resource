// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class AppColors {
  _Container container = _Container();
  _Scaffold scaffold = _Scaffold();
  _Text text = _Text();
}

class _Container {
  Color background = const Color.fromARGB(255, 230, 77, 7);
}

class _Scaffold {
  Color background = Colors.black;
}

class _Text {
  Color heading = Colors.white;
  Color subheading = Colors.red;
}
