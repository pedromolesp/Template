import 'package:flutter/material.dart';

class TextThemePlus extends ThemeExtension<TextThemePlus> {
  TextThemePlus({
    required this.titleL,
    required this.titleXL,
    required this.title2XL,
    required this.title3XL,
    required this.body2XL,
    required this.body2XLBold,
    required this.bodyXL,
    required this.bodyL,
    required this.bodyM,
    required this.bodyS,
    required this.bodyMSemibold,
    required this.bodyMBold,
    required this.bodyLBold,
    required this.bodyXS,
    required this.bodyXSSemibold,
    required this.body2XS,
    required this.body3XS,
    required this.labelS,
    required this.labelXS,
    required this.label2XS,
    required this.labelMSemibold,
  });

  // Title
  final TextStyle titleL;
  final TextStyle titleXL;
  final TextStyle title2XL;
  final TextStyle title3XL;
  // Body
  final TextStyle body2XL;
  final TextStyle body2XLBold;
  final TextStyle bodyXL;
  final TextStyle bodyL;
  final TextStyle bodyM;
  final TextStyle bodyS;
  final TextStyle bodyMSemibold;
  final TextStyle bodyMBold;
  final TextStyle bodyLBold;
  final TextStyle bodyXS;
  final TextStyle bodyXSSemibold;
  final TextStyle body2XS;
  final TextStyle body3XS;
  // Label
  final TextStyle labelS;
  final TextStyle labelXS;
  final TextStyle label2XS;
  final TextStyle labelMSemibold;

  @override
  TextThemePlus copyWith({
    TextStyle? titleL,
    TextStyle? titleXL,
    TextStyle? title2XL,
    TextStyle? title3XL,
    TextStyle? body2XL,
    TextStyle? body2XLBold,
    TextStyle? bodyXL,
    TextStyle? bodyL,
    TextStyle? bodyM,
    TextStyle? bodyS,
    TextStyle? bodyMSemibold,
    TextStyle? bodyMBold,
    TextStyle? bodyLBold,
    TextStyle? bodyXS,
    TextStyle? bodyXSSemibold,
    TextStyle? body2XS,
    TextStyle? body3XS,
    TextStyle? labelS,
    TextStyle? labelXS,
    TextStyle? labelMSemibold,
    TextStyle? label3XS,
  }) {
    return TextThemePlus(
      titleL: titleL ?? this.titleL,
      titleXL: titleXL ?? this.titleXL,
      title2XL: title2XL ?? this.title2XL,
      title3XL: title3XL ?? this.title3XL,
      body2XL: body2XL ?? this.body2XL,
      body2XLBold: body2XLBold ?? this.body2XLBold,
      bodyXL: bodyXL ?? this.bodyXL,
      bodyL: bodyL ?? this.bodyL,
      bodyM: bodyM ?? this.bodyM,
      bodyS: bodyS ?? this.bodyS,
      bodyMSemibold: bodyMSemibold ?? this.bodyMSemibold,
      bodyMBold: bodyMBold ?? this.bodyMBold,
      bodyLBold: bodyLBold ?? this.bodyLBold,
      bodyXS: bodyXS ?? this.bodyXS,
      bodyXSSemibold: bodyXSSemibold ?? this.bodyXSSemibold,
      body2XS: body2XS ?? this.body2XS,
      body3XS: body3XS ?? this.body3XS,
      labelS: labelS ?? this.labelS,
      labelXS: labelXS ?? this.labelXS,
      labelMSemibold: labelMSemibold ?? this.labelMSemibold,
      label2XS: label3XS ?? label2XS,
    );
  }

  @override
  ThemeExtension<TextThemePlus> lerp(
      covariant ThemeExtension<TextThemePlus>? other, double t) {
    if (other is! TextThemePlus) {
      return this;
    }

    return TextThemePlus(
      titleL: TextStyle.lerp(titleL, other.titleL, t) ?? titleL,
      titleXL: TextStyle.lerp(titleXL, other.titleXL, t) ?? titleXL,
      title2XL: TextStyle.lerp(title2XL, other.title2XL, t) ?? title2XL,
      title3XL: TextStyle.lerp(title3XL, other.title3XL, t) ?? title3XL,
      body2XL: TextStyle.lerp(body2XL, other.body2XL, t) ?? body2XL,
      body2XLBold:
          TextStyle.lerp(body2XLBold, other.body2XLBold, t) ?? body2XLBold,
      bodyXL: TextStyle.lerp(bodyXL, other.bodyXL, t) ?? bodyXL,
      bodyL: TextStyle.lerp(bodyL, other.bodyL, t) ?? bodyL,
      bodyM: TextStyle.lerp(bodyM, other.bodyM, t) ?? bodyM,
      bodyS: TextStyle.lerp(bodyS, other.bodyS, t) ?? bodyS,
      bodyMSemibold: TextStyle.lerp(bodyMSemibold, other.bodyMSemibold, t) ??
          bodyMSemibold,
      bodyMBold: TextStyle.lerp(bodyMBold, other.bodyMBold, t) ?? bodyMBold,
      bodyLBold: TextStyle.lerp(bodyLBold, other.bodyLBold, t) ?? bodyLBold,
      bodyXS: TextStyle.lerp(bodyXS, other.bodyXS, t) ?? bodyXS,
      bodyXSSemibold: TextStyle.lerp(bodyXSSemibold, other.bodyXSSemibold, t) ??
          bodyXSSemibold,
      body2XS: TextStyle.lerp(body2XS, other.body2XS, t) ?? body2XS,
      body3XS: TextStyle.lerp(body3XS, other.body3XS, t) ?? body3XS,
      labelXS: TextStyle.lerp(labelXS, other.labelXS, t) ?? labelXS,
      labelS: TextStyle.lerp(labelS, other.labelS, t) ?? labelS,
      labelMSemibold: TextStyle.lerp(labelMSemibold, other.labelMSemibold, t) ??
          labelMSemibold,
      label2XS: TextStyle.lerp(label2XS, other.label2XS, t) ?? label2XS,
    );
  }

  TextThemePlus apply({required Color color}) {
    return TextThemePlus(
      titleL: titleL.apply(color: color),
      titleXL: titleXL.apply(color: color),
      title2XL: title2XL.apply(color: color),
      title3XL: title3XL.apply(color: color),
      body2XL: body2XL.apply(color: color),
      body2XLBold: body2XLBold.apply(color: color),
      bodyXL: bodyXL.apply(color: color),
      bodyL: bodyL.apply(color: color),
      bodyM: bodyM.apply(color: color),
      bodyS: bodyS.apply(color: color),
      bodyMSemibold: bodyMSemibold.apply(color: color),
      bodyMBold: bodyMBold.apply(color: color),
      bodyLBold: bodyLBold.apply(color: color),
      bodyXS: bodyXS.apply(color: color),
      bodyXSSemibold: bodyXSSemibold.apply(color: color),
      body2XS: body2XS.apply(color: color),
      body3XS: body3XS.apply(color: color),
      labelS: labelS.apply(color: color),
      labelXS: labelXS.apply(color: color),
      labelMSemibold: labelMSemibold.apply(color: color),
      label2XS: label2XS.apply(color: color),
    );
  }
}
