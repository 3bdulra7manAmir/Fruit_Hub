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
import '../../features/06_products/presentation/screens/filtered_products_view.dart';
import '../../features/06_products/presentation/screens/products_view.dart';
import '../../features/07_products_details/presentation/screens/cart_view.dart';
import '../../features/07_products_details/presentation/screens/item_details_view.dart';
import '../../features/08_review_and_rating/presentation/screens/review_rating_view.dart';

import '../router/app_routes.dart';
import '../router/route_observer.dart';
import 'navigator.dart';

abstract class AppRouter
{
  AppRouter._();

  static final navigatorState = GlobalKey<NavigatorState>(debugLabel: 'root');
  static String? currentRoute;

  static final router = GoRouter(
    navigatorKey: navigatorState,
    debugLogDiagnostics: kDebugMode,
    observers: [NavigatorObserverWithTracking()],
    initialLocation: AppRoutes.login,
    errorBuilder: (_, __) => const Scaffold(body: Center(child: CustomCircularIndicator())),
    routes:
    [
      /// [ Onboarding ]
      GoRoute(
        path: AppRoutes.splash,
        name: AppRoutes.splash,
        builder: (_, __) => const Splash(),
      ),
      GoRoute(
        path: AppRoutes.dotIndicator,
        name: AppRoutes.dotIndicator,
        builder: (_, __) => const DotIndicator(),
      ),

      /// [ Auth ]
      GoRoute(
        path: AppRoutes.login,
        name: AppRoutes.login,
        builder: (_, __) => Login(),
      ),
      GoRoute(
        path: AppRoutes.register,
        name: AppRoutes.register,
        builder: (_, __) => Register(),
      ),
      GoRoute(
        path: AppRoutes.forgetPasswordPhone,
        name: AppRoutes.forgetPasswordPhone,
        builder: (_, __) => ForgetPasswordPhone(),
      ),
      GoRoute(
        path: AppRoutes.passwordRecoveryEmail,
        name: AppRoutes.passwordRecoveryEmail,
        builder: (_, __) => PasswordRecoveryEmail(),
      ),
      GoRoute(
        path: AppRoutes.newPassword,
        name: AppRoutes.newPassword,
        builder: (_, __) => NewPassword(),
      ),
      
      GoRoute(
        path: AppRoutes.rate,
        name: AppRoutes.rate,
        builder: (_, __) => const ReviewAndRating(),
      ),

      /// [ Stateful Shell ]
      StatefulShellRoute.indexedStack(
  builder: (_, __, navigationShell) => MainScaffold(navigationShell: navigationShell),
  branches: [
    /// Branch 0: Home + subroutes
    StatefulShellBranch(
      routes: [
        GoRoute(
          path: AppRoutes.home,
          name: AppRoutes.home,
          builder: (_, __) => const Home(),
          routes: [
            GoRoute(
              path: AppRoutes.mostSold,
              name: AppRoutes.mostSold,
              builder: (_, __) => const MorePopular(),
            ),
            GoRoute(
              path: AppRoutes.notificationsForHome,
              name: AppRoutes.notificationsForHome,
              builder: (_, __) => const Notifications(),
            ),
            GoRoute(
              path: AppRoutes.searchForHome,
              name: AppRoutes.searchForHome,
              builder: (_, state) {
                final fruitName = state.extra as String? ?? '';
                return Search(fruitName: fruitName);
              },
            ),
            GoRoute(
              path: AppRoutes.itemsDetailsFromHome,
              name: AppRoutes.itemsDetailsFromHome,
              builder: (_, __) => const ItemDetails(),
            ),
          ],
        ),
      ],
    ),

    /// Branch 1: Products + subroutes
    StatefulShellBranch(
      routes: [
        GoRoute(
          path: AppRoutes.products,
          name: AppRoutes.products,
          builder: (_, __) => const Products(),
          routes: [
            GoRoute(
              path: AppRoutes.notificationsForProducts,
              name: AppRoutes.notificationsForProducts,
              builder: (_, __) => const Notifications(),
            ),
            GoRoute(
              path: AppRoutes.searchForProducts,
              name: AppRoutes.searchForProducts,
              builder: (_, state) {
                final fruitName = state.extra as String? ?? '';
                return Search(fruitName: fruitName);
              },
            ),
            GoRoute(
              path: AppRoutes.filteredProducts,
              name: AppRoutes.filteredProducts,
              builder: (_, __) => const FilteredProducts(),
            ),
            GoRoute(
              path: AppRoutes.itemsDetailsFromProducts,
              name: AppRoutes.itemsDetailsFromProducts,
              builder: (_, __) => const ItemDetails(),
            ),
          ],
        ),
      ],
    ),

    /// Branch 2: Cart + subroutes
    StatefulShellBranch(
      routes: [
        GoRoute(
          path: AppRoutes.cart,
          name: AppRoutes.cart,
          builder: (_, __) => const Cart(),
          routes: [
            GoRoute(
              path: AppRoutes.itemsDetailsFromCart,
              name: AppRoutes.itemsDetailsFromCart,
              builder: (_, __) => const ItemDetails(),
            ),
          ],
        ),
      ],
    )


          // /// Branch 3: Profile + subroutes [  ]
          // StatefulShellBranch(
          //   routes:
          //   [
          //     GoRoute(
          //       path: AppRoutes.profile,
          //       name: AppRoutes.profile,
          //       builder: (_, __) => const Profile(),
          //       routes: []
          //     ),
          //   ],
          // ),
        ],
      ),
    ],
  );
}
