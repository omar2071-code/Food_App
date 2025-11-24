import 'package:flutter/material.dart';
import 'package:food_app/core/utils/colors_app.dart';

class CustomAppBarProfile extends StatelessWidget {
  const CustomAppBarProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_rounded,
              size: 20,

              color: ColorsApp.kWhiteColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings, size: 20, color: ColorsApp.kWhiteColor),
          ),
        ],
      ),
    );
  }
}
