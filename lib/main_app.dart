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

class ECommerceApp extends StatelessWidget
{
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return const DevicePreviewWidget(
      isEnabled: true,
      builder: ScreenUtilWidget(
        designSize: Size(375, 812),
        builder: MaterialAppWidget(),
      ),
    );
  }
}


class DevicePreviewWidget extends StatelessWidget
{
  const DevicePreviewWidget({super.key, required this.builder, required this.isEnabled});

  final bool isEnabled;
  final Widget builder;

  @override
  Widget build(BuildContext context)
  {
    return DevicePreview(
      enabled: isEnabled,
      builder: (context) => builder,
    );
  }
}


class ScreenUtilWidget extends StatelessWidget
{
  const ScreenUtilWidget({super.key, required this.designSize, required this.builder});

  final Size designSize;
  final MaterialAppWidget builder;

  @override
  Widget build(BuildContext context)
  {
    return ScreenUtilInit(
      designSize: designSize,
      builder: (context, child) => builder,
    );
  }
}


class MaterialAppWidget extends ConsumerWidget
{
  const MaterialAppWidget({super.key,});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: ref.watch(localizationProvider),
          
      theme: AppTheme.lightTheme(),
      darkTheme: AppTheme.darkTheme(),
      themeMode: ref.watch(themeProvider),
      
      debugShowCheckedModeBanner: false,
    );
  }
}