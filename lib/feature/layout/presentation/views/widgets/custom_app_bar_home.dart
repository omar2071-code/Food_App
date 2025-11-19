import 'package:flutter/material.dart';
import 'package:food_app/core/utils/asset.dart';
import 'package:food_app/core/utils/colors_app.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBarHomeView extends StatelessWidget {
  const CustomAppBarHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Hungry?',
          style: GoogleFonts.luckiestGuy(
            fontWeight: FontWeight.w400,
            fontSize: 40,
            color: ColorsApp.kPColor,
          ),
        ),
        Spacer(),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image: AssetImage(AssetData.maskImage)),
          ),
        ),
      ],
    );
  }
}
