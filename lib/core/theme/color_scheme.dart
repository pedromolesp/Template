import 'package:flutter/material.dart';
import 'package:templateapp/core/theme/color_scheme_plus.dart';
import 'package:templateapp/core/theme/palette.dart';

// LIGHT
const lightColorScheme = ColorScheme.light(
  // Accent
  primary: Palette.neutral100,
  primaryContainer: Palette.neutral10,
  onPrimaryContainer: Palette.neutral100,
  // Secondary
  secondary: Palette.green50,
  onSecondary: Palette.white,
  secondaryContainer: Palette.green20,
  onSecondaryContainer: Palette.neutral100,
  onSurface: Palette.neutral100,
  surfaceDim: Palette.neutral10,
  surfaceBright: Palette.neutral5,
  onSurfaceVariant: Palette.neutral60,
  // Unused Surfaces
  surfaceContainerHighest: Palette.white,
  surfaceContainerHigh: Palette.white,
  surfaceContainer: Palette.white,
  surfaceContainerLow: Palette.white,
  surfaceContainerLowest: Palette.white,
  inverseSurface: Palette.white,
  surfaceTint: Colors.transparent,
  // Outline
  outline: Palette.neutral30,
  outlineVariant: Palette.green20,
  // Error
  error: Palette.red80,
  errorContainer: Palette.red10,
  onErrorContainer: Palette.red90,
);

const lightColorSchemePlus = ColorSchemePlus(
  errorVariant: Palette.red30,
  // Successs
  success: Palette.green80,
  onSuccess: Palette.white,
  successContainer: Palette.green10,
  onSuccessContainer: Palette.green90,
  successVariant: Palette.green30,
  // Warning
  warning: Palette.yellow80,
  onWarning: Palette.white,
  warningContainer: Palette.yellow10,
  onWarningContainer: Palette.yellow90,
  warningVariant: Palette.yellow30,
  // Info
  info: Palette.blue80,
  onInfo: Palette.white,
  infoContainer: Palette.blue10,
  onInfoContainer: Palette.blue90,
  infoVariant: Palette.blue30,
  // Advantage
  advantage1: Palette.red20,
  advantage2: Palette.green20,
  advantage3: Palette.blue20,
  advantage4: Palette.yellow20,
  // Category
  category1: Palette.red10,
  category2: Palette.green10,
  category3: Palette.blue10,
  category4: Palette.yellow10,
  category5: Palette.neutral10,
  // Period
  period1: Palette.red70,
  period2: Palette.blueAlternative,
  period3: Palette.green50,
  period4: Palette.green70,
  // Like
  like: Palette.red40,
  // Divider
  dividerMenu: Palette.neutral20,
);

// DARK
const darkColorScheme = ColorScheme.dark(
  // Accent
  primary: Palette.white,
  onPrimary: Palette.neutral100,
  primaryContainer: Palette.neutral90,
  onPrimaryContainer: Palette.white,
  // Secondary
  secondary: Palette.green30,
  onSecondary: Palette.neutral100,
  secondaryContainer: Palette.green90,
  onSecondaryContainer: Palette.white,
  // Surface
  surface: Palette.neutral100,
  surfaceDim: Palette.neutral90,
  surfaceBright: Palette.neutral80,
  onSurfaceVariant: Palette.white,
  // Unused Surfaces
  surfaceContainerHighest: Palette.neutral100,
  surfaceContainerHigh: Palette.neutral100,
  surfaceContainer: Palette.neutral100,
  surfaceContainerLow: Palette.neutral100,
  surfaceContainerLowest: Palette.neutral100,
  inverseSurface: Palette.neutral100,
  surfaceTint: Colors.transparent,
  // Outline
  outline: Palette.neutral70,
  outlineVariant: Palette.green70,
  // Error
  error: Palette.red30,
  onError: Palette.neutral100,
  errorContainer: Palette.red20,
  onErrorContainer: Palette.red90,
);
