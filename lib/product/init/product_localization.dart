import 'package:architecture_template/product/utility/constants/enums/locales.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

@immutable

/// Product localization manager
final class ProductLocalization extends EasyLocalization {
  /// Product localization need to [child] for a wrap locale item
  ProductLocalization({
    required super.child,
    super.key,
  }) : super(
          supportedLocales: _supportedLocales,
          path: _translationPath,
          useOnlyLangCode: true,
        );

  /// Project supported locale enum
  static final List<Locale> _supportedLocales = [
    Locales.tr.locale,
    Locales.en.locale,
  ];

  static const String _translationPath = 'assets/translations';

  /// Change Project Language by using [Locales]
  static Future<void> updateLanguage(BuildContext context, Locales value) =>
      context.setLocale(value.locale);
}
