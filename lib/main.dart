import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/firebase_options.dart';
import 'package:hive/src_v2/features/theme/di/theme_di.dart';
import 'package:hive/src_v2/features/theme/theme_provider.dart';
import 'package:hive/src_v2/features/theme/themes/app_theme.dart';
import 'package:hive/src_v2/utils/router.dart';

void main() async {
  // configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();

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

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      themeScope: ThemeScopeHolder(),
      child: ScreenUtilInit(
        builder: (_, child) {
          return AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.dark,
            child: _listenAcivUse(
              ch: MaterialApp.router(
                title: 'Flutter Sirius',
                debugShowCheckedModeBanner: false,
                routerConfig: RoutingServiceV2.goRouter,
              ),
              context: context,
            ),
          );
        },
      ),
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
