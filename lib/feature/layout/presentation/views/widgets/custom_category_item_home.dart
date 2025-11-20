import 'package:flutter/material.dart';
import 'package:food_app/core/utils/colors_app.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCategoryItemButton extends StatelessWidget {
  const CustomCategoryItemButton({
    super.key,
    this.width = 75,
    this.height = 50,
    this.raduis = 20,
    required this.text,
    required this.onTap,
  });
  final double width;
  final double raduis;

  final double height;
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: ColorsApp.kPColor,
          borderRadius: BorderRadius.all(Radius.circular(raduis)),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: ColorsApp.kWhiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
