import 'package:flutter/material.dart';
import 'package:food_app/feature/cart/presentation/view/success_pay_cart_view.dart';
import 'package:food_app/feature/cart/presentation/view/widgets/check_out_view_widgets/cahe_checkout_view.dart';
import 'package:food_app/feature/cart/presentation/view/widgets/check_out_view_widgets/custom_save_card_checkout_view.dart';
import 'package:food_app/feature/cart/presentation/view/widgets/check_out_view_widgets/section_order_checkout_view.dart';
import 'package:food_app/feature/cart/presentation/view/widgets/check_out_view_widgets/visa_card_checkout_view.dart';
import 'package:food_app/feature/cart/presentation/view/widgets/custom_total_price_cart.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckOutView extends StatelessWidget {
  const CheckOutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 25,
        leadingWidth: 20,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, weight: 17, size: 20),
        ),
      ),
      body: CheckOutViewBody(),
    );
  }
}

class CheckOutViewBody extends StatelessWidget {
  const CheckOutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10, bottom: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionOrderSummry(),
          SizedBox(height: 20),
          Text(
            'Payment methods',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 10),
          CustomCachCheckOut(),
          SizedBox(height: 10),
          CustomVisaCheckOut(),
          SizedBox(height: 10),
          CustomSaveCard(),
          Spacer(),
          CustomTotalPrice(
            buttonText: 'Pay Now',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SuccessPayCartView()),
              );
            },
          ),
        ],
      ),
    );
  }
}
