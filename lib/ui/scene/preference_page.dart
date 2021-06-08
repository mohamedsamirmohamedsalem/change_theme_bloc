import 'package:change_theme_bloc/ui/global/theme/app_themes.dart';
import 'package:change_theme_bloc/ui/global/theme/theme_bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PreferencePage extends StatelessWidget {
  const PreferencePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Preferences'),
        ),
        body: Container(
          child: BlocConsumer<ThemeCubit, ThemeState>(
            listener: (context, state) {},
            builder: (context, state) {
              //  if (state is ThemeChanged) {
              return buildListView();
            },
          ),
        ));
  }

  buildListView() {
    return ListView.builder(
      padding: EdgeInsets.all(8),
      itemCount: AppTheme.values.length,
      itemBuilder: (context, index) {
        final itemAppTheme = AppTheme.values[index];
        return Card(
          color: appThemeData[itemAppTheme].primaryColor,
          child: ListTile(
            title: Text(
              itemAppTheme.toString(),
              style: appThemeData[itemAppTheme].textTheme.body1,
            ),
            onTap: () {
              context
                  .read<ThemeCubit>()
                  .changeTheme(appThemeData[itemAppTheme]);
            },
          ),
        );
      },
    );
  }
}
