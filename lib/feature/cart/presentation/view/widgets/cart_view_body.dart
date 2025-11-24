import 'package:flutter/material.dart';
import 'package:food_app/core/widgets/custom_app_bar.dart';
import 'package:food_app/feature/cart/presentation/view/check_out_view.dart';
import 'package:food_app/feature/cart/presentation/view/widgets/cart_item_view.dart';
import 'package:food_app/feature/cart/presentation/view/widgets/custom_total_price_cart.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
      child: Column(
        children: [
          CartItem(),
          Spacer(),
          CustomTotalPrice(
            buttonText: 'checkOut',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CheckOutView()),
              );
            },
          ),
        ],
      ),
    );
  }
}
