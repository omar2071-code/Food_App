import 'package:flutter/material.dart';
import 'package:food_app/core/utils/colors_app.dart';
import 'package:food_app/feature/product/presentation/view/widgets/topping_item.dart';

class ListToppingItem extends StatelessWidget {
  ListToppingItem({
    super.key,
    this.backgroundColorAvatar = ColorsApp.kRedColor,
  });
  Color? backgroundColorAvatar;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder:
            (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ToppingItem(backgroundColorAvatar: backgroundColorAvatar),
            ),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
