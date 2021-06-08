import 'package:change_theme_bloc/ui/global/theme/app_themes.dart';
import 'package:change_theme_bloc/ui/global/theme/theme_bloc/bloc.dart';
import 'package:change_theme_bloc/ui/scene/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          if (state is ThemeChanged) {
            return MaterialApp(
              title: 'Material App',
              home: HomePage(),
              theme: state.theme,
            );
          } else {
            return MaterialApp(
              title: 'Material App',
              home: HomePage(),
              theme: appThemeData[AppTheme.BlueLight],
            );
          }
        },
      ),
    );
  }
}
