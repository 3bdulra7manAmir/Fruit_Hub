import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'config/i18n/generated/l10n.dart';
import 'config/i18n/localization/localization_controller.dart';
import 'config/router/app_router.dart';
import 'config/theme/theme_controller/theme_controller.dart';
import 'config/theme/theme_manager/themes.dart';

class ECommerceApp extends ConsumerWidget
{
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final themesProvider = ref.watch(themeProvider);
    final localProvider = ref.watch(localizationProvider);
    return DevicePreview(
      //enabled: false,
      builder: (context) => ScreenUtilInit(
        designSize: const Size(375, 812),
          builder: (context, child) => MaterialApp.router(
          routerConfig: AppRouter.router,
          
          localizationsDelegates:
          const
          [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          locale: localProvider,
      
          theme: AppTheme.lightTheme(),
          darkTheme: AppTheme.darkTheme(),
          themeMode: themesProvider,
          
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}