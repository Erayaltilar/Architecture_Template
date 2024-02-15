import 'package:architecture_template/product/init/theme/custom_color_sheme.dart';
import 'package:architecture_template/product/init/theme/custom_theme.dart';
import 'package:flutter/material.dart';

final class CustomLightTheme implements CustomTheme {
  @override
  // TODO: set change to initialize ThemeData instead of computed
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        colorScheme: CustomColorSheme.lightColorSheme,
        floatingActionButtonTheme: floatingActionButtonThemeData,
        primaryColor: const Color(0xFFd0ccff),
      );

  @override
  FloatingActionButtonThemeData get floatingActionButtonThemeData =>
      const FloatingActionButtonThemeData();
}
