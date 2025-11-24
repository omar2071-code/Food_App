import 'package:flutter/material.dart';
import 'package:food_app/core/utils/colors_app.dart';
import 'package:food_app/feature/product/presentation/view/widgets/list_topping_item.dart';
import 'package:google_fonts/google_fonts.dart';

class ToppingSection extends StatelessWidget {
  ToppingSection({
    super.key,
    required this.titleName,
    this.backgroundColorAvatar = ColorsApp.kRedColor,
  });
  final String titleName;
  Color? backgroundColorAvatar;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titleName,
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 10),
          ListToppingItem(backgroundColorAvatar: backgroundColorAvatar),
        ],
      ),
    );
  }
}
