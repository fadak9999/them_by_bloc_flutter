part of 'theme_bloc.dart';

sealed class ThemeState extends Equatable {
  const ThemeState();

  @override
  List<Object> get props => [];
}

final class ThemeInitial extends ThemeState {}

//
class LodingThemeState extends ThemeState {
  final ThemeData themeData;

 const LodingThemeState({required this.themeData});

    @override
  List<Object> get props => [themeData];
}
