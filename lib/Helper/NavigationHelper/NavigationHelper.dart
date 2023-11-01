//@dart=2.13

// Dart imports:
import 'dart:async';
import 'dart:developer' as dev show log;
import 'dart:ui' show ImageFilter;

// Flutter imports:
import 'package:flutter/foundation.dart' as foundation show kDebugMode;
import 'package:flutter/material.dart';

// Project imports:
import 'BaseNavigationHelper.dart';

typedef PageBuilderFunction = Widget Function(BuildContext context, Animation<double> a1, Animation<double> a2);

class NavigationHelper implements BaseNavigationHelper {
  @override
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  final messengerKey = GlobalKey<ScaffoldMessengerState>();

  @override
  BuildContext? get currentContext => navigatorKey.currentContext;

  void _onError(Object e, StackTrace? st) {
    if (foundation.kDebugMode) {
      dev.log(e.toString(), stackTrace: st);
    }
  }
///push to page using pushName
  @override
  Future<T?>? openPage<T extends Object?>(
    String routeName, {
    Object? arg,
  }) {
    try {
      return navigatorKey.currentState?.pushNamed<T>(routeName, arguments: arg);
    } catch (e, st) {
      _onError(e, st);
    }
    return null;
  }

  ///open page by class
  @override
  Future<T?>? openPageClass<T extends Object?>(Widget page) {
    try {
      return navigatorKey.currentState?.push<T>(
        MaterialPageRoute<T>(builder: (_) => page),
      );
    } catch (e, st) {
      _onError(e, st);
    }
    return null;
  }

  ///push replacement destroy old state
  Future<T?>? openPageClassReplace<T extends Object?, TO extends Object?>(Widget page, {TO? result}) {
    try {
      return navigatorKey.currentState?.pushReplacement<T, TO>(
        MaterialPageRoute<T>(builder: (_) => page),
        result: result,
      );
    } catch (e, st) {
      _onError(e, st);
    }
    return null;
  }


  ///open page destroy to inital page
  @override
  Future<T?>? openPageNoNav<T extends Object?>(Widget newPage) {
    try {
      return navigatorKey.currentState?.pushAndRemoveUntil<T>(
        MaterialPageRoute<T>(builder: (_) => newPage),
        (_) => false,
      );
    } catch (e, st) {
      _onError(e, st);
    }

    return null;
  }

  @override
  Future<T?>? openPageNamedNoNav<T extends Object?>(
    String routeName, {
    Object? arguments,
  }) {
    try {
      return navigatorKey.currentState?.pushNamedAndRemoveUntil<T>(
        routeName,
        (_) => false,
        arguments: arguments,
      );
    } catch (e, st) {
      _onError(e, st);
    }

    return null;
  }

  @override
  Object? getPageData([BuildContext? context]) {
    return ModalRoute.of(context ?? currentContext!)?.settings.arguments ?? {};
  }

  @override
  void closePage<T extends Object?>({T? payload}) {
    try {
      return navigatorKey.currentState?.pop(payload);
    } catch (e, st) {
      _onError(e, st);
    }

    return null;
  }

  @override
  void closePageUntil(String routeName) {
    try {
      return navigatorKey.currentState?.popUntil(ModalRoute.withName(routeName));
    } catch (e, st) {
      _onError(e, st);
    }

    return null;
  }

  @override
  void closePageToHome() {
    return navigatorKey.currentState?.popUntil((route) => route.isFirst);
  }

  @override
  Future<T?>? offToNameUntil<T extends Object?>(
    String toRouteName, {
    required String untilRouteName,
    Object? arguments,
  }) {
    try {
      return navigatorKey.currentState?.pushNamedAndRemoveUntil<T>(
        toRouteName,
        ModalRoute.withName(untilRouteName),
        arguments: arguments,
      );
    } catch (e, st) {
      _onError(e, st);
    }

    return null;
  }

  @override
  Future<T?>? offToName<T extends Object?, TO extends Object?>(
    String routeName, {
    TO? result,
    Object? arguments,
  }) {
    try {
      return navigatorKey.currentState?.pushReplacementNamed<T, TO>(
        routeName,
        result: result,
        arguments: arguments,
      );
    } catch (e, st) {
      _onError(e, st);
    }

    return null;
  }

  @override
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
  }) {
    assert(
        (message != null) ^ (content != null),
        'You have to choose between showing a text message or '
        'showing a content which is a widget. If you only want '
        'to show a text message, provide some `String` to the [message], '
        'and don\'t provide a `Widget` to the [content]. And vice versa.');
    try {
      return messengerKey.currentState?.showSnackBar(SnackBar(
        content: message != null ? Text(message) : content!,
        duration: duration ?? const Duration(milliseconds: 2000),
        backgroundColor: backgroundColor,
        elevation: elevation,
        behavior: floating != null && floating ? SnackBarBehavior.floating : SnackBarBehavior.fixed,
        margin: margin,
        padding: padding,
        width: width,
        shape: shape,
        action: action,
        animation: animation,
        onVisible: onVisible,
      ));
    } catch (e, st) {
      _onError(e, st);
    }

    return null;
  }

  @override
  Future<T?>? showDialogWithBlur<T extends Object?>({
    required PageBuilderFunction pageBuilder,
    double? blurFactor,
    bool barrierDismissible = false,
    String? barrierLabel,
    Color barrierColor = const Color(0x8A000000),
    Duration transitionDuration = const Duration(milliseconds: 300),
    bool useRootNavigator = true,
    RouteSettings? routeSettings,
  }) {
    assert(
        !barrierDismissible || barrierLabel != null,
        'If you want to set [barrierDismissible] to true, '
        '[barrierLabel] cannot be null, and vice versa.');
    try {
      return showGeneralDialog(
        context: navigatorKey.currentContext!,
        pageBuilder: pageBuilder,
        barrierDismissible: barrierDismissible,
        barrierLabel: barrierLabel,
        barrierColor: barrierColor,
        transitionDuration: transitionDuration,
        transitionBuilder: blurFactor == null
            ? null
            : (_, a1, __, child) => BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: blurFactor * a1.value, sigmaY: blurFactor * a1.value),
                  child: FadeTransition(
                    child: child,
                    opacity: a1,
                  ),
                ),
        useRootNavigator: useRootNavigator,
        routeSettings: routeSettings,
      );
    } catch (e, st) {
      _onError(e, st);
    }
    return null;
  }

}
