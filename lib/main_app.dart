import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'config/localization/app_localizations.dart';
import 'config/router/app_router.dart';
import 'config/theme/theme_manager/themes.dart';

class ECommerceApp extends StatelessWidget
{
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context)
  {
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
      
          theme: AppTheme.lightTheme(),
          darkTheme: AppTheme.darkTheme(),
          //themeMode: ,
          
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}