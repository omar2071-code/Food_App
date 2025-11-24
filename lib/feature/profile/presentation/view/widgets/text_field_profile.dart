import 'package:flutter/material.dart';
import 'package:food_app/core/utils/colors_app.dart';

class CustomTextFieldProfile extends StatelessWidget {
  CustomTextFieldProfile({
    super.key,
    required this.Label,
    required this.keyboardType,
    this.obscureText = false,
  });
  final String Label;
  final TextInputType keyboardType;
  bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: TextField(
        obscureText: obscureText!,
        keyboardType: keyboardType,
        keyboardAppearance: Brightness.light,
        style: TextStyle(color: ColorsApp.kWhiteColor),

        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 20, top: 16, bottom: 16),
          label: Text(Label, style: TextStyle(color: Colors.white)),
          errorMaxLines: 1,
          border: OutLineIputBorder(),
          focusedBorder: OutLineIputBorder(),
          enabledBorder: OutLineIputBorder(),
          disabledBorder: OutLineIputBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder OutLineIputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
      borderSide: BorderSide(
        color: ColorsApp.kWhiteColor,
        width: 2,
        style: BorderStyle.solid,
      ),
    );
  }
}
