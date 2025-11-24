import 'package:flutter/material.dart';
import 'package:food_app/core/utils/asset_data.dart';
import 'package:food_app/feature/product/presentation/view/widgets/customizer_burger.dart';

class SpicySection extends StatelessWidget {
  const SpicySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(AssetData.spicyImage, width: 120, height: 150),
        CustomizeBurger(),
      ],
    );
  }
}
