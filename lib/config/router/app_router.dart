import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/widgets/custom_circular_indicator.dart';
import '../../features/01_onboarding/presentation/screens/splash_view.dart';
import '../../features/01_onboarding/presentation/screens/dots_indicator_view.dart';
import '../../features/02_auth/presentation/screens/login_view.dart';
import 'app_routes.dart';


abstract class AppRouter
{
  AppRouter._();
  static final navigatorState = GlobalKey<NavigatorState>(debugLabel: 'root');
  static final router = GoRouter(
    navigatorKey: navigatorState,
    debugLogDiagnostics: kDebugMode,
    initialLocation: AppRoutes.login,
    errorBuilder: (_, _) => const Scaffold(body: Center(child: CustomCircularIndicator()),),
    routes:
    [
      /// [ Splash ]
      GoRoute(
        path: AppRoutes.splash,
        name: AppRoutes.splash,
        builder: (context, state) => const Splash(),
      ),

      /// [ Dots Indicator ]
      GoRoute(
        path: AppRoutes.dotIndicator,
        name: AppRoutes.dotIndicator,
        builder: (context, state) => const DotIndicator(),
      ),

      /// [ Login ]
      GoRoute(
        path: AppRoutes.login,
        name: AppRoutes.login,
        builder: (context, state) => const Login(),
      ),
    ]
  );
}
