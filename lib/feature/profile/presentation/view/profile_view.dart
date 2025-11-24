import 'package:flutter/material.dart';
import 'package:food_app/core/utils/colors_app.dart';
import 'package:food_app/feature/profile/presentation/view/widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.kPColor,
      body: ProfileViewBody(),
    );
  }
}
