///todo: isCodingWorkCompleted?=>"no, work in progress!";
library;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:team_white_social_media_app/presentation/screens/messaging_screen/messaging_screen.dart';

import 'controller_binder.dart';
import 'presentation/presentation_utilities/theme/app_theme_data.dart';
import 'presentation/screens/auth/splash_screen/splash_screen.dart';
import 'presentation/screens/notification_screen/notification_screen.dart';

class SocialMediaApp extends StatelessWidget {
  const SocialMediaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return GetMaterialApp(
            theme: const AppThemeData(TextTheme()).light(),
            darkTheme: const AppThemeData(TextTheme()).dark(),
            home: const MessagingScreen(),
            initialBinding: ControllerBinder(),
          );
        });
  }
}
