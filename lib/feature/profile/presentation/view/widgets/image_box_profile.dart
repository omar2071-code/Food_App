import 'package:flutter/material.dart';
import 'package:food_app/core/utils/asset_data.dart';

class GlowImageBox extends StatelessWidget {
  const GlowImageBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 126,
      height: 129,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 4),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            offset: Offset(0, 3),
            color: Colors.red.withOpacity(.7),
          ),
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(1),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(AssetData.profileImage, fit: BoxFit.contain),
      ),
    );
  }
}
