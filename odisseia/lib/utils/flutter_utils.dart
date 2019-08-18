import 'package:flutter/material.dart';

class FlutterUtils {
  static void goToScreen(BuildContext context, Widget screen) => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
}
