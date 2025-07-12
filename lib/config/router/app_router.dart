import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/widgets/circular_indicator.dart';
import '../../features/01_onboarding/presentation/screens/splash_view.dart';
import '../../features/01_onboarding/presentation/screens/dots_indicator_view.dart';
import '../../features/02_auth/presentation/screens/forget_password_phone_view.dart';
import '../../features/02_auth/presentation/screens/login_view.dart';
import '../../features/02_auth/presentation/screens/new_password_view.dart';
import '../../features/02_auth/presentation/screens/password_recovery_email.dart';
import '../../features/02_auth/presentation/screens/register_view.dart';
import '../../features/03_home/presentation/screens/home_view.dart';
import '../../features/03_home/presentation/screens/more_popular_view.dart';
import '../../features/04_search/presentation/screens/search_view.dart';
import '../../features/05_notifications/presentation/screens/notifications_view.dart';
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
      /// [ OnBoarding Feature ]
      // [Splash]
      GoRoute(
        path: AppRoutes.splash,
        name: AppRoutes.splash,
        builder: (context, state) => const Splash(),
      ),
      // [Dots Indicator]
      GoRoute(
        path: AppRoutes.dotIndicator,
        name: AppRoutes.dotIndicator,
        builder: (context, state) => const DotIndicator(),
      ),

      /// [ Auth Feature ]
      // [Login]
      GoRoute(
        path: AppRoutes.login,
        name: AppRoutes.login,
        builder: (context, state) => Login(),
      ),
      // [Register]
      GoRoute(
        path: AppRoutes.register,
        name: AppRoutes.register,
        builder: (context, state) => Register(),
      ),
      // [Forget Password Phone]
      GoRoute(
        path: AppRoutes.forgetPasswordPhone,
        name: AppRoutes.forgetPasswordPhone,
        builder: (context, state) => ForgetPasswordPhone(),
      ),
      // [Password Recovery Email]
      GoRoute(
        path: AppRoutes.passwordRecoveryEmail,
        name: AppRoutes.passwordRecoveryEmail,
        builder: (context, state) => PasswordRecoveryEmail(),
      ),
      // [New Password]
      GoRoute(
        path: AppRoutes.newPassword,
        name: AppRoutes.newPassword,
        builder: (context, state) => NewPassword(),
      ),


      ///[ Home ]
      GoRoute(
        path: AppRoutes.home,
        name: AppRoutes.home,
        builder: (context, state) => Home(),
      ),
      //[Most Sold]
      GoRoute(
        path: AppRoutes.mostSold,
        name: AppRoutes.mostSold,
        builder: (context, state) => MorePopular(),
      ),


      ///[ Search ]
      GoRoute(
        path: AppRoutes.search,
        name: AppRoutes.search,
        builder: (context, state)
        {
          final fruitName = state.uri.queryParameters['fruitName'] ?? '';
          return Search(fruitName: fruitName);
        } ,
      ),

      ///[Notifications]
      GoRoute(
        path: AppRoutes.notifications,
        name: AppRoutes.notifications,
        builder: (context, state) => Notifications(),
      ),
    ]
  );
}
