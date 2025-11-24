import 'package:flutter/material.dart';
import 'package:food_app/core/utils/colors_app.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButtonIconText extends StatelessWidget {
  const CustomButtonIconText({
    super.key,
    this.colorContainer = ColorsApp.kWhiteColor,
    required this.text,
    this.colorText,
    this.onTap,
    required this.icon,
    this.colorIcon,
  });
  final String text;
  final Color? colorText;
  final Function()? onTap;
  final IconData icon;
  final Color? colorIcon;
  final Color? colorContainer;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 130,
        height: 50,

        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2, strokeAlign: 1),
          color: colorContainer,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              '$text',
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: colorText,
              ),
            ),
            Icon(icon, color: colorIcon),
          ],
        ),
      ),
    );
  }
}
