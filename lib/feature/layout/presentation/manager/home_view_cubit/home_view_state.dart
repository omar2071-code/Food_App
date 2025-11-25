part of 'home_view_cubit.dart';

sealed class HomeViewState {}

final class HomeViewInitial extends HomeViewState {}

final class HomeViewLoadingCategory extends HomeViewState {}

final class HomeViewSuccessCategory extends HomeViewState {}

final class HomeViewErrorCategory extends HomeViewState {
  final String messageError;

  HomeViewErrorCategory({required this.messageError});
}
