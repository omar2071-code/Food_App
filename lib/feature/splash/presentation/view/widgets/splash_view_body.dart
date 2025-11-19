import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/core/utils/asset.dart';
import 'package:food_app/core/utils/colors_app.dart';
import 'package:food_app/feature/layout/presentation/manager/layout_cubit/layout_cubit.dart';
import 'package:food_app/feature/layout/presentation/views/layout_app.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationcController;
  late Animation<Offset> animation;

  @override
  void initState() {
    super.initState();
    // give time
    animationcController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    //response about move text
    animation = Tween<Offset>(begin: Offset(0, -5), end: Offset(0, 0)).animate(
      CurvedAnimation(parent: animationcController, curve: Curves.easeIn),
    );
    //start animation
    animationcController.forward();

    // go to home view
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder:
              (context) => BlocProvider(
                create: (context) => LayoutCubit(),
                child: LayoutApp(),
              ),
        ),
      );
    });
  }

  @override
  void dispose() {
    animationcController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(flex: 3),
        Center(
          child: SlideTransition(
            position: animation,
            child: Text(
              'Hungry?',
              style: GoogleFonts.luckiestGuy(
                fontWeight: FontWeight.w400,
                fontSize: 60,
                color: ColorsApp.kWhiteColor,
              ),
            ),
          ),
        ),
        Spacer(flex: 2),
        Image.asset(AssetData.testImage),
      ],
    );
  }
}
