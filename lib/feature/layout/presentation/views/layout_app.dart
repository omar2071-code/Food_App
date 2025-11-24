import 'package:flutter/material.dart';
import 'package:food_app/core/utils/colors_app.dart';
import 'package:food_app/feature/layout/presentation/manager/layout_cubit/layout_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LayoutApp extends StatelessWidget {
  const LayoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutState>(
      builder: (context, state) {
        var cubit = LayoutCubit.get(context);
        return Scaffold(
          body: cubit.screen[cubit.currentIndex],
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              splashFactory: NoSplash.splashFactory,
            ),
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
                child: BottomNavigationBar(
                  backgroundColor: ColorsApp.kPColor,
                  selectedItemColor: ColorsApp.kWhiteColor,
                  unselectedItemColor: Colors.grey,
                  type: BottomNavigationBarType.fixed,
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  elevation: 0,

                  currentIndex: cubit.currentIndex,
                  onTap: (value) {
                    if (value == 3) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => cubit.screen[3],
                        ),
                      );
                    } else if (value == 2) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => cubit.screen[2],
                        ),
                      );
                    } else {
                      cubit.changeBottom(value);
                    }
                  },
                  items: cubit.items,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
