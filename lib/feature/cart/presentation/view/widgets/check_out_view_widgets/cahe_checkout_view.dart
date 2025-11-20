import 'package:flutter/material.dart';
import 'package:food_app/core/utils/asset_data.dart';
import 'package:food_app/core/utils/colors_app.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCachCheckOut extends StatelessWidget {
  const CustomCachCheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Color(0xff3C2F2F),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Image.asset(AssetData.dollarImage),
          Spacer(flex: 1),
          Text(
            'Cash on Delivery',
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: ColorsApp.kWhiteColor,
            ),
          ),
          Spacer(flex: 4),
          CircleAvatar(
            radius: 10,
            backgroundColor: ColorsApp.kWhiteColor,
            child: CircleAvatar(
              backgroundColor: Color(0xff3C2F2F),
              radius: 8,
              child: CircleAvatar(
                backgroundColor: ColorsApp.kWhiteColor,
                radius: 5,
              ),
            ),
          ),

          Spacer(flex: 1),
        ],
      ),
    );
  }
}
