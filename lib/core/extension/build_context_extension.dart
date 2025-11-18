import 'dart:async';
import 'dart:developer';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:templateapp/core/config/extensions/key_extension.dart';
import 'package:templateapp/core/config/l10n/app_localizations.dart';
import 'package:templateapp/core/enums/keys_enum.dart';
import 'package:templateapp/core/theme/color_scheme_plus.dart';
import 'package:templateapp/core/theme/text_theme_plus.dart';
import 'package:templateapp/core/theme/theme.dart';
import 'package:templateapp/core/utils/enums/svg_enum.dart';

extension LocalizedBuildContext on BuildContext {
  AppLocalizations get localizations => AppLocalizations.of(this);
}

extension SizeBuildContext on BuildContext {
  Size get size => MediaQuery.of(this).size;
}

extension BuildContextExtension on BuildContext {
  // THEME
  ThemeData get theme => Theme.of(this);
  ColorScheme get cs => theme.colorScheme;
  ColorSchemePlus get csp => theme.extension<ColorSchemePlus>()!;

  TextTheme get tt => theme.textTheme;
  TextThemePlus get ttp => theme.extension<TextThemePlus>()!;

  bool get isApple =>
      defaultTargetPlatform == TargetPlatform.iOS ||
      defaultTargetPlatform == TargetPlatform.macOS;

  bool get isAndroid => defaultTargetPlatform == TargetPlatform.android;

  bool get isLtr => Directionality.of(this) == TextDirection.ltr;

  ScaffoldMessengerState get scaffoldMessenger => ScaffoldMessenger.of(this);

  MediaQueryData get mediaQuery => MediaQueryData.fromView(
        PlatformDispatcher.instance.views.first,
      );

  Size get size => MediaQuery.sizeOf(this);

  GoRouter get goRouter => GoRouter.of(this);

  double get pixelRatio => MediaQuery.devicePixelRatioOf(this);

  Size get sizeWithRatio => size * pixelRatio;

  EdgeInsets get viewPadding =>
      MediaQuery.maybeViewPaddingOf(this) ?? EdgeInsets.zero;

  EdgeInsets get safePadding =>
      MediaQuery.maybePaddingOf(this) ?? EdgeInsets.zero;

  Brightness get brightness => Theme.of(this).brightness;

  bool get isDesktop =>
      defaultTargetPlatform == TargetPlatform.linux ||
      defaultTargetPlatform == TargetPlatform.windows;

  bool get isWeb => kIsWeb;

  MaterialLocalizations get materialLocalizations =>
      MaterialLocalizations.of(this);

  double get height => MediaQuery.sizeOf(this).height;

  double get width => MediaQuery.sizeOf(this).width;

  bool get isLandScape =>
      MediaQuery.orientationOf(this) == Orientation.landscape;

  AssetBundle get assetBundle => DefaultAssetBundle.of(this);

  NavigatorState get navigator => Navigator.of(this);

  Locale get locale => Localizations.localeOf(this);

  TextDirection get textDirection => Directionality.of(this);

  Future<void> preCacheAll() => Future.wait(
        [
          // preCacheImages(),
          // preCacheSVGs(),
        ],
      );

  Future<void> preCacheSVGs() => Future.wait(
        SvgEnum.values.map(
          (svg) => precacheImage(
            AssetImage(
              svg.path,
            ),
            this,
          ),
        ),
      );

  Map<String, Completer<Object?>> get _keys => <String, Completer<Object?>>{};

  Future<Object?> showAlertDialog(
    KeysEnum key, {
    Widget? title,
    Widget? content,
    List<Widget>? actions,
    bool barrierDismissible = true,
    bool canPop = true,
    bool useRootNavigator = true,
  }) {
    if (_keys.containsKey(key.key.toStringHashCode)) {
      log('Dialog $key already shown');
      return _keys[key.key.toStringHashCode]!.future;
    }
    _keys[key.key.toStringHashCode] = Completer<Object?>();
    return showAdaptiveDialog<Object?>(
      context: this,
      barrierDismissible: barrierDismissible,
      useRootNavigator: useRootNavigator,
      builder: (context) {
        return PopScope(
          onPopInvokedWithResult: (didPop, result) =>
              _keys.remove(key.key.toStringHashCode),
          canPop: canPop,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
            child: AlertDialog.adaptive(
              key: key.key,
              title: title,
              content: content,
              actions: actions,
            ),
          ),
        );
      },
    );
  }

  Future<Object?> showScreenDialog(
    KeysEnum key, {
    Widget? child,
    bool barrierDismissible = true,
    bool isFullScreen = false,
    bool canPop = true,
  }) {
    if (_keys.containsKey(key.key.toStringHashCode)) {
      log('Dialog $key already shown');
      return _keys[key.key.toStringHashCode]!.future;
    }
    _keys[key.key.toStringHashCode] = Completer<Object?>();
    return showGeneralDialog<Object?>(
      context: this,
      barrierDismissible: barrierDismissible,
      barrierLabel: materialLocalizations.modalBarrierDismissLabel,
      barrierColor: Colors.black54,
      pageBuilder: (context, animation, secondaryAnimation) {
        return PopScope(
          onPopInvokedWithResult: (didPop, result) =>
              _keys.remove(key.key.toStringHashCode),
          canPop: canPop,
          child: isFullScreen
              ? Dialog.fullscreen(
                  key: key.key,
                  child: child,
                )
              : Dialog(key: key.key, child: child),
        );
      },
    );
  }

  void showSnackBar(
    Key key,
    Widget content, {
    Duration duration = const Duration(seconds: 3),
    SnackBarAction? action,
  }) =>
      scaffoldMessenger.showSnackBar(
        SnackBar(
          key: key,
          content: content,
          duration: duration,
          action: action,
          behavior: SnackBarBehavior.floating,
          clipBehavior: Clip.antiAlias,
          margin: EdgeInsetsDirectional.only(
            bottom: size.height * .85,
            end: 20,
            start: 20,
          ),
        ),
      );

  Future<Object?> showSheet(
    Key key, {
    required Widget child,
    bool canPop = true,
    bool isScrollControlled = true,
    bool useRootNavigator = true,
    bool showDragHandle = false,
    bool enableDrag = true,
    bool useSafeArea = true,
    double elevation = 0,
    BoxConstraints? constraints,
    Color? backgroundColor,
  }) {
    if (_keys.containsKey('${key.hashCode}')) {
      log('Dialog $key already shown');
      return _keys[key.toStringHashCode]!.future;
    }
    _keys[key.toStringHashCode] = Completer<Object?>();
    return showModalBottomSheet<Object?>(
      context: this,
      useRootNavigator: useRootNavigator,
      isScrollControlled: isScrollControlled,
      isDismissible: canPop,
      elevation: elevation,
      showDragHandle: showDragHandle,
      enableDrag: enableDrag,
      useSafeArea: useSafeArea,
      constraints: constraints,
      backgroundColor: backgroundColor,
      barrierLabel: materialLocalizations.modalBarrierDismissLabel,
      barrierColor: AppColors.black.withValues(alpha: .4),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(12),
        ),
      ),
      clipBehavior: Clip.antiAlias,
      builder: (bContext) {
        return PopScope(
          onPopInvokedWithResult: (didPop, result) =>
              _keys.remove(key.toStringHashCode),
          canPop: canPop,
          child: child,
        );
      },
    );
  }
}
