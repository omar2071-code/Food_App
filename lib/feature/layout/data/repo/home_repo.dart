import 'package:dartz/dartz.dart';
import 'package:food_app/core/errors/failure.dart';
import 'package:food_app/feature/layout/data/model/category_model/category_model.dart';

abstract class HomeRepo {
  // get category name 2- get all category data
  Future<Either<Failure, List<CategoryModel>>> fetchCategoryName();
  Future<Either<Failure, List<CategoryModel>>> fetchCategoryData();
}
