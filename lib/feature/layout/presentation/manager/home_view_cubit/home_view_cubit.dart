import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/core/utils/api_service.dart';
import 'package:food_app/feature/layout/data/model/category_model/category_model.dart';

part 'home_view_state.dart';

class HomeViewCubit extends Cubit<HomeViewState> {
  HomeViewCubit(this.categoryModel) : super(HomeViewInitial());

  //
  final CategoryModel categoryModel;

  void getCategoryData() {}
}
