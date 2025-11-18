import 'package:flutter/material.dart';
import 'package:food_app/core/utils/asset.dart';
import 'package:food_app/core/utils/colors_app.dart';
import 'package:food_app/feature/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: ColorsApp.kPColor, body: SplashViewBody());
  }
}
