import 'package:flutter/material.dart';
import 'package:food_app/core/utils/colors_app.dart';
import 'package:food_app/core/widgets/divider.dart';
import 'package:food_app/feature/cart/presentation/view/widgets/check_out_view_widgets/visa_card_checkout_view.dart';
import 'package:food_app/feature/profile/presentation/view/widgets/app_bar_profile.dart';
import 'package:food_app/feature/profile/presentation/view/widgets/button_icon_text.dart';
import 'package:food_app/feature/profile/presentation/view/widgets/column_text_field_profile.dart';
import 'package:food_app/feature/profile/presentation/view/widgets/image_box_profile.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBarProfile(),
        GlowImageBox(),
        SizedBox(height: 10),
        ColumnTextField(),
        CustomDivider(),
        SizedBox(height: 7),
        //visa card
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23.0),
          child: CustomVisaCheckOut(
            height: 60,
            borderRadius: 16,
            backgroundColor: ColorsApp.kPColor,
          ),
        ),
        SizedBox(height: 10),
        //Edit Profile button& log out
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButtonIconText(
                icon: Icons.edit_note,
                text: 'Edit Profile',
                colorText: ColorsApp.kPColor,
                colorIcon: ColorsApp.kPColor,
                onTap: () {},
              ),
              CustomButtonIconText(
                colorContainer: ColorsApp.kPColor,
                icon: Icons.logout,
                text: 'Log Out',
                colorText: ColorsApp.kWhiteColor,
                colorIcon: ColorsApp.kWhiteColor,
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
