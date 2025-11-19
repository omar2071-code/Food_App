import 'package:flutter/material.dart';
import 'package:food_app/core/utils/colors_app.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: ColorsApp.kWhiteColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 10,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: TextField(
        onSubmitted: (value) {
          print(value);
        },
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search_rounded),
          hintText: 'Search',
          hintStyle: GoogleFonts.roboto(
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
          border: CustomBorderOutLine(),
          enabledBorder: CustomBorderOutLine(),
          focusedBorder: CustomBorderOutLine(),
        ),
      ),
    );
  }

  OutlineInputBorder CustomBorderOutLine() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(24),
      borderSide: BorderSide(color: ColorsApp.kWhiteColor),
    );
  }
}
