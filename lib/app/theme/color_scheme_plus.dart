import 'package:flutter/material.dart';

class ColorSchemePlus extends ThemeExtension<ColorSchemePlus> {
  const ColorSchemePlus({
    required this.errorVariant,
    required this.success,
    required this.onSuccess,
    required this.successContainer,
    required this.onSuccessContainer,
    required this.successVariant,
    required this.warning,
    required this.onWarning,
    required this.warningContainer,
    required this.onWarningContainer,
    required this.warningVariant,
    required this.info,
    required this.onInfo,
    required this.infoContainer,
    required this.onInfoContainer,
    required this.infoVariant,
    required this.advantage1,
    required this.advantage2,
    required this.advantage3,
    required this.advantage4,
    required this.category1,
    required this.category2,
    required this.category3,
    required this.category4,
    required this.category5,
    required this.period1,
    required this.period2,
    required this.period3,
    required this.period4,
    required this.like,
    required this.dividerMenu,
  });
  // Error
  final Color errorVariant;
  // Success
  final Color success;
  final Color onSuccess;
  final Color successContainer;
  final Color onSuccessContainer;
  final Color successVariant;
  // Warning
  final Color warning;
  final Color onWarning;
  final Color warningContainer;
  final Color onWarningContainer;
  final Color warningVariant;
  // Info
  final Color info;
  final Color onInfo;
  final Color infoContainer;
  final Color onInfoContainer;
  final Color infoVariant;
  // Advantage
  final Color advantage1;
  final Color advantage2;
  final Color advantage3;
  final Color advantage4;
  // Category
  final Color category1;
  final Color category2;
  final Color category3;
  final Color category4;
  final Color category5;
  // Period
  final Color period1;
  final Color period2;
  final Color period3;
  final Color period4;
  // Like
  final Color like;
  // Grey
  final Color dividerMenu;

  @override
  ColorSchemePlus copyWith({
    Color? errorVariant,
    Color? success,
    Color? onSuccess,
    Color? successContainer,
    Color? onSuccessContainer,
    Color? successVariant,
    Color? warning,
    Color? onWarning,
    Color? warningContainer,
    Color? onWarningContainer,
    Color? warningVariant,
    Color? info,
    Color? onInfo,
    Color? infoContainer,
    Color? onInfoContainer,
    Color? infoVariant,
    Color? advantage1,
    Color? advantage2,
    Color? advantage3,
    Color? advantage4,
    Color? category1,
    Color? category2,
    Color? category3,
    Color? category4,
    Color? category5,
    Color? category6,
    Color? category7,
    Color? period1,
    Color? period2,
    Color? period3,
    Color? period4,
    Color? like,
    Color? dividerMenu,
  }) {
    return ColorSchemePlus(
      errorVariant: errorVariant ?? this.errorVariant,
      success: success ?? this.success,
      onSuccess: onSuccess ?? this.onSuccess,
      successContainer: successContainer ?? this.successContainer,
      onSuccessContainer: onSuccessContainer ?? this.onSuccessContainer,
      successVariant: successVariant ?? this.successVariant,
      warning: warning ?? this.warning,
      onWarning: onWarning ?? this.onWarning,
      warningContainer: warningContainer ?? this.warningContainer,
      onWarningContainer: onWarningContainer ?? this.onWarningContainer,
      warningVariant: warningVariant ?? this.warningVariant,
      info: info ?? this.info,
      onInfo: onInfo ?? this.onInfo,
      infoContainer: infoContainer ?? this.infoContainer,
      onInfoContainer: onInfoContainer ?? this.onInfoContainer,
      infoVariant: infoVariant ?? this.infoVariant,
      advantage1: advantage1 ?? this.advantage1,
      advantage2: advantage2 ?? this.advantage2,
      advantage3: advantage3 ?? this.advantage3,
      advantage4: advantage4 ?? this.advantage4,
      category1: category1 ?? this.category1,
      category2: category2 ?? this.category2,
      category3: category3 ?? this.category3,
      category4: category4 ?? this.category4,
      category5: category5 ?? this.category5,
      period1: period1 ?? this.period1,
      period2: period2 ?? this.period2,
      period3: period3 ?? this.period3,
      period4: period4 ?? this.period4,
      like: like ?? this.like,
      dividerMenu: dividerMenu ?? this.dividerMenu,
    );
  }

  @override
  ColorSchemePlus lerp(ColorSchemePlus? other, double t) {
    if (other is! ColorSchemePlus) {
      return this;
    }
    return ColorSchemePlus(
      errorVariant:
          Color.lerp(errorVariant, other.errorVariant, t) ?? errorVariant,
      success: Color.lerp(success, other.success, t) ?? success,
      onSuccess: Color.lerp(onSuccess, other.onSuccess, t) ?? onSuccess,
      successContainer:
          Color.lerp(successContainer, other.successContainer, t) ??
              successContainer,
      onSuccessContainer:
          Color.lerp(onSuccessContainer, other.onSuccessContainer, t) ??
              onSuccessContainer,
      successVariant:
          Color.lerp(successVariant, other.successVariant, t) ?? successVariant,
      warning: Color.lerp(warning, other.warning, t) ?? warning,
      onWarning: Color.lerp(onWarning, other.onWarning, t) ?? onWarning,
      warningContainer:
          Color.lerp(warningContainer, other.warningContainer, t) ??
              warningContainer,
      onWarningContainer:
          Color.lerp(onWarningContainer, other.onWarningContainer, t) ??
              onWarningContainer,
      warningVariant:
          Color.lerp(warningVariant, other.warningVariant, t) ?? warningVariant,
      info: Color.lerp(info, other.info, t) ?? info,
      onInfo: Color.lerp(onInfo, other.onInfo, t) ?? onInfo,
      infoContainer:
          Color.lerp(infoContainer, other.infoContainer, t) ?? infoContainer,
      onInfoContainer: Color.lerp(onInfoContainer, other.onInfoContainer, t) ??
          onInfoContainer,
      infoVariant: Color.lerp(infoVariant, other.infoVariant, t) ?? infoVariant,
      advantage1: Color.lerp(advantage1, other.advantage1, t) ?? advantage1,
      advantage2: Color.lerp(advantage2, other.advantage2, t) ?? advantage2,
      advantage3: Color.lerp(advantage3, other.advantage3, t) ?? advantage3,
      advantage4: Color.lerp(advantage4, other.advantage4, t) ?? advantage4,
      category1: Color.lerp(category1, other.category1, t) ?? category1,
      category2: Color.lerp(category2, other.category2, t) ?? category2,
      category3: Color.lerp(category3, other.category3, t) ?? category3,
      category4: Color.lerp(category4, other.category4, t) ?? category4,
      category5: Color.lerp(category5, other.category5, t) ?? category5,
      period1: Color.lerp(period1, other.period1, t) ?? period1,
      period2: Color.lerp(period2, other.period2, t) ?? period2,
      period3: Color.lerp(period3, other.period3, t) ?? period3,
      period4: Color.lerp(period4, other.period4, t) ?? period4,
      like: Color.lerp(like, other.like, t) ?? like,
      dividerMenu: Color.lerp(dividerMenu, other.dividerMenu, t) ?? dividerMenu,
    );
  }
}
