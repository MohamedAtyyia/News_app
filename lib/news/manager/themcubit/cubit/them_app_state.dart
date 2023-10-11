part of 'them_app_cubit.dart';

sealed class ThemAppState extends Equatable {
  const ThemAppState();

  @override
  List<Object> get props => [];
}

final class ThemAppInitial extends ThemAppState {}

final class ThemAppDark extends ThemAppState {}

final class ThemAppLight extends ThemAppState {}

