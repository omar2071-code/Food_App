import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 47.0, vertical: 5),
      child: Container(width: 336, height: .5, color: Color(0xffE8E8E8)),
    );
  }
}
