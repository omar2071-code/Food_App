import 'package:flutter/material.dart';

abstract class NavigatorApp {
  static void NavigatorPushAndRemove(
    BuildContext context, {
    required Widget screen,
  }) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => screen),
      (route) => false,
    );
  }
}
