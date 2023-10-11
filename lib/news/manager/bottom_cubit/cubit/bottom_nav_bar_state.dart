part of 'bottom_nav_bar_cubit.dart';

sealed class BottomNavBarState extends Equatable {
  const BottomNavBarState();

  @override
  List<Object> get props => [];
}

final class BottomNavBarInitial extends BottomNavBarState {}


final class FirestScreen extends BottomNavBarState {}

final class SecondeScreen extends BottomNavBarState {}

final class ThierdScreen extends BottomNavBarState {}
