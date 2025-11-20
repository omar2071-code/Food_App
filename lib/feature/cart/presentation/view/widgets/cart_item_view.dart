import 'package:flutter/material.dart';
import 'package:food_app/core/utils/asset_data.dart';
import 'package:food_app/core/utils/colors_app.dart';
import 'package:food_app/feature/layout/presentation/views/widgets/custom_category_item_home.dart';
import 'package:google_fonts/google_fonts.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: ColorsApp.kWhiteColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 10,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 14,
          right: 10,
          bottom: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  AssetData.testImage,
                  height: 90,
                  fit: BoxFit.fitHeight,
                ),
                SizedBox(height: 10),
                Text(
                  'Hamburger',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Veggie Burger',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Spacer(),
            Column(
              children: [
                Spacer(flex: 1),
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorsApp.kPColor,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.remove,
                          color: ColorsApp.kWhiteColor,
                          size: 25,
                        ),
                      ),
                    ),

                    SizedBox(width: 20),
                    Text(
                      "5",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorsApp.kPColor,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          color: ColorsApp.kWhiteColor,
                          size: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(flex: 2),
                CustomCategoryItemButton(
                  text: 'Remove',
                  onTap: () {},
                  width: 170,
                  height: 50,
                  raduis: 25,
                ),
                Spacer(flex: 1),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
