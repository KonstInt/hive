import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/firebase_options.dart';
import 'package:hive/src/util/di/injectable.dart';
import 'package:hive/src/util/router/router.dart';
import 'package:hive/src/util/themes/app_theme.dart';

void main() async {
  configureDependencies();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, child) {
        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.dark,
          child: _listenAcivUse(
            ch: MaterialApp.router(
              title: 'Flutter Sirius',
              theme: AppTheme.lightTheme,
              debugShowCheckedModeBanner: false,
              darkTheme: AppTheme.darkTheme,
              routerConfig: GetIt.I<RoutingService>().goRouter,
            ),
            context: context,
          ),
        );
      },
    );
  }

  Widget _listenAcivUse({required Widget ch, required BuildContext context}) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onPanDown: (_) {
        // TimerResetBooking.withTimer.generalTimerReset(context);
      },
      child: ch,
    );
  }
}
