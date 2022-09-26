import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppTheme {
  AppTheme();

  factory AppTheme.of(BuildContext context) {
    return context.read<AppTheme>();
  }

  late final TextTheme textTheme;
  late final ColorTheme colorTheme;
}

class ColorTheme {
  ColorTheme();

  factory ColorTheme.of(BuildContext context) {
    return AppTheme.of(context).colorTheme;
  }
}

class TextTheme {
  TextTheme();

  factory TextTheme.of(BuildContext context) {
    return AppTheme.of(context).textTheme;
  }

  TextStyle title1({Color? color}) {
    return TextStyle(
      color: color ?? Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 22,
    );
  }

  TextStyle title2({Color? color}) {
    return TextStyle(
      color: color ?? Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 18,
    );
  }

  TextStyle title3({Color? color}) {
    return TextStyle(
      color: color ?? Colors.grey,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
  }

  TextStyle body({Color? color}) {
    return TextStyle(
    );
  }


}
