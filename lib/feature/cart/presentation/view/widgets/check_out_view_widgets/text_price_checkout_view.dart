import 'package:flutter/material.dart';
import 'package:food_app/core/utils/colors_app.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextPrice extends StatelessWidget {
  CustomTextPrice({
    super.key,
    required this.titleText,
    required this.titlePrice,
    this.colorText = ColorsApp.kGrayColor,
    this.colorPrice = ColorsApp.kGrayColor,
    this.fontWeightPrice = FontWeight.w400,
    this.fontWeightText = FontWeight.w400,
    this.fontSizePrice = 18,
    this.fontSizeTitle = 18,
  });
  final String titleText;
  final String titlePrice;
  FontWeight? fontWeightText;
  Color? colorText;
  FontWeight? fontWeightPrice;
  Color? colorPrice;
  double? fontSizeTitle;
  double? fontSizePrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            titleText,
            style: GoogleFonts.roboto(
              fontWeight: fontWeightText,
              color: colorText,
              fontSize: fontSizeTitle,
            ),
          ),
          Text(
            titlePrice,
            style: GoogleFonts.roboto(
              fontWeight: fontWeightPrice,
              color: colorPrice,
              fontSize: fontSizePrice,
            ),
          ),
        ],
      ),
    );
  }
}
