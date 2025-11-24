import 'package:flutter/material.dart';
import 'package:food_app/feature/profile/presentation/view/widgets/text_field_profile.dart';

class ColumnTextField extends StatelessWidget {
  const ColumnTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),

      child: Column(
        children: [
          //name
          CustomTextFieldProfile(
            Label: "Name",
            keyboardType: TextInputType.name,
          ),
          //emial
          CustomTextFieldProfile(
            Label: "Email",
            keyboardType: TextInputType.name,
          ),
          //Delivery address
          CustomTextFieldProfile(
            Label: "Delivery address",
            keyboardType: TextInputType.text,
          ),
          //Password address
          CustomTextFieldProfile(
            Label: "Password",
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
          ),
        ],
      ),
    );
  }
}
