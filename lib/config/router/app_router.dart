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
import '../../features/09_checkout/presentation/screens/checkout_address_view.dart';
import '../../features/09_checkout/presentation/screens/checkout_payment.dart';
import '../../features/09_checkout/presentation/screens/checkout_review_view.dart';
import '../../features/09_checkout/presentation/screens/checkout_ship_view.dart';
import '../../features/09_checkout/presentation/screens/payment_success.dart';
import '../../features/09_checkout/presentation/screens/track_order.dart';
import 'app_routes.dart';
import 'route_observer.dart';


abstract class AppRouter
{
  AppRouter._();
  static final navigatorState = GlobalKey<NavigatorState>(debugLabel: 'root');
  static String? currentRoute;
  static final router = GoRouter(
    navigatorKey: navigatorState,
    debugLogDiagnostics: kDebugMode,
    observers: [NavigatorObserverWithTracking(),],
    initialLocation: AppRoutes.trackOrder,
    errorBuilder: (_, _) => const Scaffold(body: Center(child: CustomCircularIndicator()),),
    routes:
    [
      /// [ OnBoarding Feature ]
      // [Splash]
      GoRoute(
        path: AppRoutes.splash,
        name: AppRoutes.splash,
        builder: (_, _) => const Splash(),
      ),
      // [Dots Indicator]
      GoRoute(
        path: AppRoutes.dotIndicator,
        name: AppRoutes.dotIndicator,
        builder: (_, _) => const DotIndicator(),
      ),

      /// [ Auth Feature ]
      // [Login]
      GoRoute(
        path: AppRoutes.login,
        name: AppRoutes.login,
        builder: (_, _) => Login(),
      ),
      // [Register]
      GoRoute(
        path: AppRoutes.register,
        name: AppRoutes.register,
        builder: (_, _) => Register(),
      ),
      // [Forget Password Phone]
      GoRoute(
        path: AppRoutes.forgetPasswordPhone,
        name: AppRoutes.forgetPasswordPhone,
        builder: (_, _) => ForgetPasswordPhone(),
      ),
      // [Password Recovery Email]
      GoRoute(
        path: AppRoutes.passwordRecoveryEmail,
        name: AppRoutes.passwordRecoveryEmail,
        builder: (_, _) => PasswordRecoveryEmail(),
      ),
      // [New Password]
      GoRoute(
        path: AppRoutes.newPassword,
        name: AppRoutes.newPassword,
        builder: (_, _) => NewPassword(),
      ),


      ///[ Home Feature ]
      GoRoute(
        path: AppRoutes.home,
        name: AppRoutes.home,
        builder: (_, _) => const Home(),
      ),
      //[Most Sold]
      GoRoute(
        path: AppRoutes.mostSold,
        name: AppRoutes.mostSold,
        builder: (_, _) => const MorePopular(),
      ),

      ///[ Search Feature ]
      GoRoute(
        path: AppRoutes.search,
        name: AppRoutes.search,
        builder: (_, state)
        {
          final fruitName = state.extra as String? ?? '';
          return Search(fruitName: fruitName);
        } ,
      ),

      ///[ Notifications Feature ]
      GoRoute(
        path: AppRoutes.notifications,
        name: AppRoutes.notifications,
        builder: (_, _) => const Notifications(),
      ),

      ///[ Products Feature ]
      GoRoute(
        path: AppRoutes.products,
        name: AppRoutes.products,
        builder: (_, _) => const Products(),
      ),

      ///[ Filtered_Products Feature ]
      GoRoute(
        path: AppRoutes.filteredProducts,
        name: AppRoutes.filteredProducts,
        builder: (_, _) => const FilteredProducts(),
      ),

      ///[ Item_Details Feature ]
      GoRoute(
        path: AppRoutes.itemsDetails,
        name: AppRoutes.itemsDetails,
        builder: (_, _) => const ItemDetails(),
      ),

      ///[ Cart Feature]
      GoRoute(
        path: AppRoutes.cart,
        name: AppRoutes.cart,
        builder: (_, _) => const Cart(),
      ),
      
      ///[ Cart Feature]
      GoRoute(
        path: AppRoutes.rate,
        name: AppRoutes.rate,
        builder: (_, _) => const ReviewAndRating(),
      ),

      ///[ CheckOut Feature]
      // Checkout Ship
      GoRoute(
        path: AppRoutes.checkoutShip,
        name: AppRoutes.checkoutShip,
        builder: (_, _) => const CheckoutShip(),
      ),
      // Checkout Address
      GoRoute(
        path: AppRoutes.checkoutAddress,
        name: AppRoutes.checkoutAddress,
        builder: (_, _) => const CheckoutAddress(),
      ),
      // Checkout Payment
      GoRoute(
        path: AppRoutes.checkoutPayment,
        name: AppRoutes.checkoutPayment,
        builder: (_, _) => const CheckoutPayment(),
      ),
      // Checkout Payment
      GoRoute(
        path: AppRoutes.checkoutReview,
        name: AppRoutes.checkoutReview,
        builder: (_, _) => const CheckoutReview(),
      ),

      GoRoute(
        path: AppRoutes.paymentSuccess,
        name: AppRoutes.paymentSuccess,
        builder: (_, _) => const PaymentSuccess(),
      ),

      GoRoute(
        path: AppRoutes.trackOrder,
        name: AppRoutes.trackOrder,
        builder: (_, _) => const TrackOrder(),
      ),

      // StatefulShellRoute.indexedStack(
      //   builder: (_, __, navigationShell) => navigationShell,
      //   branches:
      //   [
      //     /// Home
      //     StatefulShellBranch(
      //       initialLocation: AppRoutes.home,
      //       routes: <RouteBase>
      //       [
      //         GoRoute(
      //           path: AppRoutes.home,
      //           name: AppRoutes.home,
      //           builder: (_, _) => const Home(),
      //           routes: []
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
    ]
  );
}
