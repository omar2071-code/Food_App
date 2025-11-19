import 'package:flutter/material.dart';
import 'package:food_app/core/utils/colors_app.dart';
import 'package:food_app/core/widgets/custom_text_field.dart';
import 'package:food_app/feature/layout/presentation/views/widgets/custom_app_bar_home.dart';
import 'package:food_app/feature/layout/presentation/views/widgets/custom_list_view_category_item.dart';
import 'package:food_app/feature/layout/presentation/views/widgets/grid_view_food_builder.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 19, right: 19, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBarHomeView(),
          Text(
            'Hello, Rich Sonic',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: ColorsApp.kGrayColr.withOpacity(.7),
            ),
          ),
          SizedBox(height: 17),
          CustomTextField(),
          SizedBox(height: 20),
          CustomListViewCategoryItem(),
          SizedBox(height: 15),
          CustomGridViewFoodBuilder(),
        ],
      ),
    );
  }
}
