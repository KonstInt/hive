import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/src/util/di/injectable.dart';
import 'package:hive/src/util/router/router.dart';
import 'package:hive/src/util/themes/app_theme.dart';

void main() {
  configureDependencies();
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
              routerConfig: GetIt.I<RoutingService>().router,
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
