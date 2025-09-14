import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension BuildcontextExtension on BuildContext{
  TextTheme get textTheme =>Theme.of(this).textTheme;
  ThemeData get themeData=>Theme.of(this);
  Color get primaryColor=>Theme.of(this).colorScheme.primary;
  Color get secondaryColor=>Theme.of(this).colorScheme.secondary;
  double get height=>MediaQuery.of(this).size.height;
  double get width=>MediaQuery.of(this).size.width;
}
