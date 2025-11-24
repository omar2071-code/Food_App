import 'package:flutter/material.dart';
import 'package:food_app/core/utils/colors_app.dart';
import 'package:food_app/feature/cart/presentation/view/cart_view.dart';
import 'package:food_app/feature/cart/presentation/view/widgets/custom_total_price_cart.dart';
import 'package:food_app/feature/product/presentation/view/widgets/spicy_section.dart';
import 'package:food_app/feature/product/presentation/view/widgets/topping_section.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SpicySection(),
        //topping
        ToppingSection(titleName: 'Topping'),
        //Side options
        ToppingSection(
          titleName: 'Side options',
          backgroundColorAvatar: ColorsApp.kPColor,
        ),

        //scetion price and add to cart
        Spacer(flex: 4),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19.0, vertical: 10),
          child: CustomTotalPrice(
            raduisContainer: 15,
            heightContainer: 50,
            widthContainer: 150,
            buttonText: 'Add to Cart',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartView()),
              );
            },
          ),
        ),
        Spacer(flex: 1),
      ],
    );
  }
}
