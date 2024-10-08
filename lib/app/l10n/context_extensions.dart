import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension LocalizedBuildContext on BuildContext {
  AppLocalizations get localizations => AppLocalizations.of(this);
}

extension SizeBuildContext on BuildContext {
  Size get size => MediaQuery.of(this).size;
}
