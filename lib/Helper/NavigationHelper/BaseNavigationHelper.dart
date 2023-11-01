//@dart=2.13

// Flutter imports:
import 'package:flutter/material.dart';

typedef PageBuilderFunction = Widget Function(
    BuildContext context, Animation<double> a1, Animation<double> a2);

/// a class to simplify navigating between screens.
/// it requires no `BuildContext` to navigate.
abstract class BaseNavigationHelper {
  /// the navigator key responsible for navigating between screens
  GlobalKey<NavigatorState> get navigatorKey;

  /// the scaffold messenger key responsible for showing snackbar
  GlobalKey<ScaffoldMessengerState> get messengerKey;

  /// get current screen context, returns `null` if no widget built with [navigatorKey]
  BuildContext? get currentContext;

  /// this is equivalent to
  /// ```
  /// await Navigator.of(contex).pushNamed('/routeName');
  /// ```
  Future<T?>? openPage<T extends Object?>(
    String routeName, {
    Object? arg,
  });

  /// this is equivalent to
  /// ```dart
  /// await Navigator.of(contex).push(CupertinoPageRoute(builder: (_) => page));
  /// ```
  Future<T?>? openPageClass<T extends Object?>(Widget page);

  Future<T?>? openPageClassReplace<T extends Object?, TO extends Object?>(Widget page, {TO? result});

  /// this is equivalent to
  /// ```dart
  /// await Navigator.of(contex).pushAndRemoveUntil(CupertinoPageRoute(builder: (_) => newPage), (_) => false);
  /// ```
  Future<T?>? openPageNoNav<T extends Object?>(Widget newPage);

  /// this is equivalent to
  /// ```dart
  /// await Navigator.of(contex).pushNamedAndRemoveUntil('/routeName', (_) => false, arguments: arguments);
  /// ```
  Future<T?>? openPageNamedNoNav<T extends Object?>(
    String routeName, {
    Object? arguments,
  });

  /// get arguments passed to this route [context]
  Object? getPageData([BuildContext? context]);

  /// this is equivalent to
  /// ```dart
  /// Navigator.of(contex).pop();
  /// ```
  void closePage<T extends Object?>({T? payload});

  /// this is equivalent to
  /// ```dart
  /// Navigator.of(context).popUntil(ModalRoute.withName('\routeName'));
  /// ```
  void closePageUntil(String routeName);

  /// this is equivalent to
  /// ```dart
  /// Navigator.of(context).popUntil((route) => route.isFirst);
  /// ```
  void closePageToHome();

  /// this is equivalent to
  /// ```dart
  /// await Navigator.of(contex).pushNamedAndRemoveUntil('/routeName', ModalRoute.withName('/untilRouteName'), arguments: arguments);
  /// ```
  Future<T?>? offToNameUntil<T extends Object?>(
    String toRouteName, {
    required String untilRouteName,
    Object? arguments,
  });

  /// this is equivalent to
  /// ```dart
  /// await Navigator.of(contex).pushReplacementNamed('/routeName');
  /// ```
  Future<T?>? offToName<T extends Object?, TO extends Object?>(
    String routeName, {
    TO? result,
    Object? arguments,
  });

  /// a shortcut for showing snack bar.
  ///
  /// provide either a `String` [message] or a `Widget` [content].
  /// one of them cannot be `null`.
  ///
  /// [duration] defaults to 2000 ms
  ///
  /// [floating] is used whether to show snackbar floating above all widgets
  /// including [BottomNavigationBar] and [FloatingActionButton].
  /// if it's set to true then it will be identical to Android's Toast
  /// defaults to false: [SnackBarBehavior.fixed].
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason>? showSnackBar({
    String? message,
    Widget? content,
    Duration? duration,
    Color? backgroundColor,
    double? elevation,
    bool? floating,
    EdgeInsetsGeometry? margin,
    EdgeInsetsGeometry? padding,
    double? width,
    ShapeBorder? shape,
    SnackBarAction? action,
    Animation<double>? animation,
    VoidCallback? onVisible,
  });

  /// [blurFactor] defaults to `null` which means no blur
  Future<T?>? showDialogWithBlur<T extends Object?>({
    required PageBuilderFunction pageBuilder,
    double? blurFactor,
    bool barrierDismissible = false,
    String? barrierLabel,
    Color barrierColor = const Color(0x8A000000),
    Duration transitionDuration = const Duration(milliseconds: 300),
    bool useRootNavigator = true,
    RouteSettings? routeSettings,
  });
}
