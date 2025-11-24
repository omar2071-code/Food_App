import 'package:flutter/material.dart';
import 'package:food_app/feature/layout/presentation/views/widgets/custom_category_item_home.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTotalPrice extends StatelessWidget {
  CustomTotalPrice({
    super.key,
    required this.buttonText,
    required this.onTap,
    this.heightContainer = 50,
    this.raduisContainer = 20,
    this.widthContainer = 150,
  });
  final String buttonText;
  final void Function() onTap;
  double? widthContainer;
  double? heightContainer;
  double? raduisContainer;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Total',
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            Text(
              '18.19 pound',
              style: GoogleFonts.reemKufiInk(
                fontWeight: FontWeight.w400,
                fontSize: 18,
              ),
            ),
          ],
        ),
        Spacer(),
        CustomCategoryItemButton(
          text: buttonText,
          onTap: onTap,
          width: widthContainer!,
          height: heightContainer!,
          raduis: raduisContainer!,
        ),
      ],
    );
  }
}
