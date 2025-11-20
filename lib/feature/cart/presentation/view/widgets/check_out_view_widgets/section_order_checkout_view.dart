import 'package:flutter/material.dart';
import 'package:food_app/core/utils/colors_app.dart';
import 'package:food_app/feature/cart/presentation/view/widgets/check_out_view_widgets/text_price_checkout_view.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionOrderSummry extends StatelessWidget {
  const SectionOrderSummry({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Order summary',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        SizedBox(height: 10),
        CustomTextPrice(titleText: 'Order', titlePrice: '16.5 E'),
        SizedBox(height: 10),
        CustomTextPrice(titleText: 'Taxes', titlePrice: '20.5 E'),
        SizedBox(height: 10),
        CustomTextPrice(titleText: 'Delivery fees', titlePrice: '1.5 E'),
        SizedBox(height: 10),
        Container(height: 1, color: ColorsApp.kGrayColor.withOpacity(.3)),
        SizedBox(height: 10),
        CustomTextPrice(
          titleText: 'Total:',
          titlePrice: '170.5 E',
          colorPrice: Colors.black,
          colorText: Colors.black,
          fontWeightPrice: FontWeight.w900,
          fontWeightText: FontWeight.w600,
        ),

        SizedBox(height: 20),
        CustomTextPrice(
          titleText: 'Estimated delivery time:',
          titlePrice: '15 - 30 mins',
          colorPrice: Colors.black,
          colorText: Colors.black,
          fontWeightPrice: FontWeight.w600,
          fontWeightText: FontWeight.w600,
          fontSizePrice: 14,
          fontSizeTitle: 14,
        ),
      ],
    );
  }
}
