import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:them_by_bloc_flutter/them/AppThem.dart';
import 'package:them_by_bloc_flutter/them/theme_cache_helper.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeInitial()) {
    on<ThemeEvent>((event, emit) async {
//
      if (event is GetCurrentThemeEvent) {
        final themindex = await ThemeCacheHelper().getCachedThemeIndex();
        final them = AppTheme.values.firstWhere(
          (AppTheme) => AppTheme.index == themindex,
        );
        emit(LodingThemeState(themeData: appThemeData[them]!));
      } else if (event is ThemChangedEvent) {
        final themindex = event.theme.index;
        await ThemeCacheHelper().cacheThemeIndex(themindex);
        emit(LodingThemeState(themeData: appThemeData[event.theme]!));
      }
      ;
    });
  }
}
