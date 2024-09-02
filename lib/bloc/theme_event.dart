part of 'theme_bloc.dart';

sealed class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object> get props => [];
}

class GetCurrentThemeEvent extends ThemeEvent {}

class ThemChangedEvent extends ThemeEvent {
  final AppTheme theme;

  ThemChangedEvent({required this.theme});
}

//
late final AppTheme theme;

@override
List<Object> get props => [theme];
