import 'package:flutter/material.dart';
import 'package:food_app/feature/layout/presentation/views/widgets/custom_category_item_home.dart';

class CustomListViewCategoryItem extends StatelessWidget {
  const CustomListViewCategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder:
            (context, index) => Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: CustomCategoryItemButton(text: 'All', onTap: () {}),
            ),
      ),
    );
  }
}
