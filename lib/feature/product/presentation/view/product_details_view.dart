import 'package:flutter/material.dart';
import 'package:food_app/core/widgets/custom_app_bar.dart';
import 'package:food_app/feature/product/presentation/view/widgets/product_details_body.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context),
      body: ProductDetailsViewBody(),
    );
  }
}
