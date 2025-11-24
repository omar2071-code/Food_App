import 'package:flutter/material.dart';
import 'package:food_app/core/utils/asset_data.dart';
import 'package:food_app/core/utils/colors_app.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomVisaCheckOut extends StatelessWidget {
  CustomVisaCheckOut({
    super.key,
    this.borderRadius = 20,
    this.height = 80,
    this.backgroundColor = ColorsApp.kWhiteColor,
  });
  double? borderRadius;
  double? height;
  Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: Color(0xffF3F4F6),
        borderRadius: BorderRadius.circular(borderRadius!),
      ),
      child: Row(
        children: [
          Image.asset(AssetData.visaImage),
          SizedBox(width: 18),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Debit card',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              Text(
                '3566 **** **** 0505',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color(0xff808080),
                ),
              ),
            ],
          ),
          Spacer(flex: 5),
          CircleAvatar(
            radius: 10,
            backgroundColor: backgroundColor,
            child: CircleAvatar(
              backgroundColor: Color(0xffF3F4F6),
              radius: 8,
              child: CircleAvatar(backgroundColor: backgroundColor, radius: 5),
            ),
          ),
          Spacer(flex: 1),
        ],
      ),
    );
  }
}
