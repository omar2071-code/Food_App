import 'package:flutter/material.dart';
import 'package:food_app/core/utils/colors_app.dart';
import 'package:google_fonts/google_fonts.dart';

class ToppingItem extends StatelessWidget {
  ToppingItem({super.key, this.backgroundColorAvatar = ColorsApp.kRedColor});
  Color? backgroundColorAvatar;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 84,
      height: 110,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: ColorsApp.kGrayColor.withOpacity(0.2),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
        borderRadius: BorderRadius.circular(15),
        color: Color(0xff3C2F2F),
      ),
      child: Column(
        children: [
          Container(
            width: 84,
            height: 70,
            decoration: BoxDecoration(
              color: ColorsApp.kWhiteColor,
              borderRadius: BorderRadius.all(Radius.circular(15)),
              image: DecorationImage(
                image: AssetImage('assets/images/tomato.png'),
              ),
            ),
          ),
          Spacer(flex: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Tomato',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w600,
                  color: ColorsApp.kWhiteColor,
                  fontSize: 12,
                ),
              ),
              CircleAvatar(
                backgroundColor: backgroundColorAvatar,
                radius: 12,
                child: Center(child: Icon(Icons.add, color: Colors.white)),
              ),
            ],
          ),
          Spacer(flex: 1),
        ],
      ),
    );
  }
}
