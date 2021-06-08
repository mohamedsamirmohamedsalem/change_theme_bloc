import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
abstract class ThemeState extends Equatable {}

class InitialTheme extends ThemeState {
  InitialTheme();
}

class ThemeChanged extends ThemeState {
  final ThemeData theme;
  ThemeChanged(this.theme);
}
