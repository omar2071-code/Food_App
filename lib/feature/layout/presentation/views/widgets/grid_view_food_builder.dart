import 'package:flutter/material.dart';
import 'package:food_app/feature/layout/presentation/views/widgets/custom_food_item.dart';

class CustomGridViewFoodBuilder extends StatelessWidget {
  const CustomGridViewFoodBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2.5 / 3,
          crossAxisSpacing: 12,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) => CustomFoodItem(),
      ),
    );
  }
}
