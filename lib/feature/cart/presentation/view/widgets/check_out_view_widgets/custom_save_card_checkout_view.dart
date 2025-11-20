import 'package:flutter/material.dart';
import 'package:food_app/core/utils/colors_app.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSaveCard extends StatelessWidget {
  const CustomSaveCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 20,
          width: 20,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color(0xffEF2A39),
          ),
          child: Icon(Icons.check, color: ColorsApp.kWhiteColor, size: 17),
        ),
        SizedBox(width: 15),
        Text(
          "Save card details for future payments",
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w400,
            color: ColorsApp.kGrayColor,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
