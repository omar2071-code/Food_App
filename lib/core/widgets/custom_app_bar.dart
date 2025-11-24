// ignore: non_constant_identifier_names
import 'package:flutter/material.dart';

AppBar CustomAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    toolbarHeight: 19,
    leadingWidth: 20,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(Icons.arrow_back, weight: 17, size: 13),
    ),
  );
}
