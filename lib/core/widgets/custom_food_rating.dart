import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFoodRating extends StatelessWidget {
  const CustomFoodRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, color: Color(0xffFF9633)),
        SizedBox(width: 3),
        Text(
          '4.5',
          style: GoogleFonts.roboto(fontWeight: FontWeight.w500, fontSize: 16),
        ),
      ],
    );
  }
}
