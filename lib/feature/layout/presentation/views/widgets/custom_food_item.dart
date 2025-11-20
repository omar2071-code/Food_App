import 'package:flutter/material.dart';
import 'package:food_app/core/utils/asset_data.dart';
import 'package:food_app/core/utils/colors_app.dart';
import 'package:food_app/core/widgets/custom_food_rating.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFoodItem extends StatelessWidget {
  const CustomFoodItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: ColorsApp.kWhiteColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 10,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 7.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset(AssetData.testImage)),
            Text(
              'Cheeseburger',
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            Text(
              'Wendy\'s Burger',
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            CustomFoodRating(),
          ],
        ),
      ),
    );
  }
}
