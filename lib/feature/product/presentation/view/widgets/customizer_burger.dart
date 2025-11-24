import 'package:flutter/material.dart';
import 'package:food_app/feature/product/presentation/view/widgets/slider_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomizeBurger extends StatelessWidget {
  const CustomizeBurger({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        // cuatom text
        SizedBox(
          width: 162,
          height: 78,
          child: Text.rich(
            maxLines: 4,
            overflow: TextOverflow.visible,
            TextSpan(
              children: [
                TextSpan(
                  text: "Customize ",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w800,
                    fontSize: 16,
                  ),
                ),
                TextSpan(
                  text: "Your Burger to Your Tastes. Ultimate Experience",

                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
        //custom slide par
        CustomSlideBar(),
      ],
    );
  }
}
