import 'package:flutter/material.dart';
import 'package:food_app/core/utils/colors_app.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSlideBar extends StatelessWidget {
  const CustomSlideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Spicy',
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
          Slider(
            activeColor: ColorsApp.kPColor,
            onChanged: (value) {
              print(value);
            },
            value: 50,
            min: 0,

            max: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '🥶',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
              Text(
                '🌶️',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Color(0xffEF2A39),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
