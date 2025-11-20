import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/core/functions/navigator_app.dart';
import 'package:food_app/core/utils/colors_app.dart';
import 'package:food_app/feature/layout/presentation/manager/layout_cubit/layout_cubit.dart';
import 'package:food_app/feature/layout/presentation/views/layout_app.dart';
import 'package:food_app/feature/layout/presentation/views/widgets/custom_category_item_home.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccessPayCartView extends StatelessWidget {
  const SuccessPayCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffBCBBBB),
      body: SuccessPayCartViewBody(),
    );
  }
}

class SuccessPayCartViewBody extends StatelessWidget {
  const SuccessPayCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Center(
      child: Container(
        width: width * .7,
        height: height * .5,

        decoration: BoxDecoration(
          color: ColorsApp.kWhiteColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: ColorsApp.kPColor,
                child: Icon(Icons.check, color: Color(0XFFFFF9F9), size: 50),
              ),
              SizedBox(height: 28),
              Text(
                'Success !',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  color: ColorsApp.kPColor,
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  textAlign: TextAlign.center,
                  maxLines: 4,

                  'Your payment was successful.A receipt for this purchase has been sent to your email.',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: ColorsApp.kGrayColor,
                  ),
                ),
              ),
              Spacer(),
              CustomCategoryItemButton(
                width: 150,
                raduis: 10,
                text: 'Go Back',
                onTap: () {
                  NavigatorApp.NavigatorPushAndRemove(
                    context,
                    screen: BlocProvider(
                      create: (context) => LayoutCubit(),
                      child: LayoutApp(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
