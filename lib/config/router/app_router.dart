import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/widgets/custom_circular_indicator.dart';
import '../../features/01_splash/presentation/screens/onboarding_first_view.dart';
import '../../features/01_splash/presentation/screens/onboarding_sec_view.dart';
import '../../features/01_splash/presentation/screens/splash_view.dart';
import 'app_routes.dart';


abstract class AppRouter
{
  AppRouter._();
  static final navigatorState = GlobalKey<NavigatorState>(debugLabel: 'root');
  static final router = GoRouter(
    navigatorKey: navigatorState,
    debugLogDiagnostics: kDebugMode,
    initialLocation: AppRoutes.splash,
    errorBuilder: (_, _) => const Scaffold(body: Center(child: CustomCircularIndicator()),),
    routes:
    [
      /// [ Splash ]
      GoRoute(
        path: AppRoutes.splash,
        name: AppRoutes.splash,
        builder: (context, state) => const Splash(),
      ),

      /// [ Onboarding1 ]
      GoRoute(
        path: AppRoutes.onboarding1,
        name: AppRoutes.onboarding1,
        builder: (context, state) => const OnboardingFirst(),
      ),

      /// [ Onboarding2 ]
      GoRoute(
        path: AppRoutes.onboarding2,
        name: AppRoutes.onboarding2,
        builder: (context, state) => const OnboardingSecond(),
      ),
    ]
  );
}
