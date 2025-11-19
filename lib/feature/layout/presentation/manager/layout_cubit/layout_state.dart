part of 'layout_cubit.dart';

@immutable
sealed class LayoutState {}

final class LayoutStateInitial extends LayoutState {}

final class LayoutStateChangeBottom extends LayoutState {}
