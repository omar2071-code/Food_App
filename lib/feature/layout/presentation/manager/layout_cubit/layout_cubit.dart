import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/feature/cart/presentation/view/cart_view.dart';

import 'package:food_app/feature/layout/presentation/views/home_view.dart';
import 'package:food_app/feature/product/presentation/view/product_details_view.dart';
import 'package:food_app/feature/profile/presentation/view/profile_view.dart';

import 'package:meta/meta.dart';

part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutStateInitial());

  static LayoutCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  //screen (home-productDetails-cart-checkout-profile)
  List<Widget> screen = [
    HomeView(),
    CartView(),
    ProductDetailsView(),
    ProfileView(),
  ];
  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_basket_outlined),
      label: "",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.messenger_outline_sharp),
      label: "",
    ),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
  ];
  void changeBottom(int value) {
    currentIndex = value;
    emit(LayoutStateChangeBottom());
  }
}
