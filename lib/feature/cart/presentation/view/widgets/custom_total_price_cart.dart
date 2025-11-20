import 'package:flutter/material.dart';
import 'package:food_app/feature/layout/presentation/views/widgets/custom_category_item_home.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTotalPrice extends StatelessWidget {
  const CustomTotalPrice({
    super.key,
    required this.buttonText,
    required this.onTap,
  });
  final String buttonText;
  final void Function() onTap;
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
          width: 150,
          height: 50,
          raduis: 20,
        ),
      ],
    );
  }
}
