import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'config/localization/app_localizations.dart';
import 'config/localization/localization_controller/localization_controller.dart';
import 'config/router/app_router.dart';
import 'config/theme/theme_controller/theme_controller.dart';
import 'config/theme/theme_manager/themes.dart';

class ECommerceApp extends ConsumerWidget
{
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final themeProvider = ref.watch(themeModeNotifierProvider);
    final localProvider = ref.watch(localeNotifierProvider);
    return DevicePreview(
      enabled: false,
      builder: (context) => ScreenUtilInit(
        designSize: const Size(375, 812),
          builder: (context, child) => MaterialApp.router(
          routerConfig: AppRouter.router,
          localizationsDelegates:
          const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.supportedLocales,
          locale: localProvider,
      
          theme: AppTheme.lightTheme(),
          darkTheme: AppTheme.darkTheme(),
          themeMode: themeProvider,
          
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}