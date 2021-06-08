import 'package:bloc/bloc.dart';
import 'package:change_theme_bloc/ui/global/theme/theme_bloc/theme_state.dart';
import 'package:flutter/material.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(InitialTheme());

  Future<void> changeTheme(ThemeData newTheme) async {
    emit(InitialTheme());
    emit(ThemeChanged(newTheme));
  }
}
