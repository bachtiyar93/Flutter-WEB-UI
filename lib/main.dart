import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web2/Model/routes.dart';
import 'package:flutter_web2/UI/dashboard.dart';
import 'package:flutter_web2/UI/splash_screen.dart';
import 'package:flutter_web2/riverpod/podstate.dart';
import 'package:oktoast/oktoast.dart';

import 'Helper/AppHelpers.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef state) {
    return OKToast(
      child: MaterialApp(
        title: "TOBAT OS",
        builder: BotToastInit(),
        navigatorKey: AppHelpers.navigation.navigatorKey,
        scaffoldMessengerKey: AppHelpers.navigation.messengerKey,
        navigatorObservers: [BotToastNavigatorObserver()],
        initialRoute: Main.splash,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          Main.splash: (_) => SplashScreen(),
          Main.dashboard: (_) => Dashboard(),
        },
      ),
    );
  }
}