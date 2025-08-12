import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/widgets/circular_indicator.dart';
import '../../features/01_onboarding/presentation/screens/dots_indicator_view.dart';
import '../../features/01_onboarding/presentation/screens/splash_view.dart';
import '../../features/02_auth/presentation/screens/forget_password_email_view.dart';
import '../../features/02_auth/presentation/screens/login_view.dart';
import '../../features/02_auth/presentation/screens/new_password_view.dart';
import '../../features/02_auth/presentation/screens/password_recovery_email.dart';
import '../../features/02_auth/presentation/screens/register_view.dart';
import '../../features/03_home/domain/entity/fruit_entity.dart';
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
import '../../features/10_profile/presentation/screens/add_new_payment_card_view.dart';
import '../../features/10_profile/presentation/screens/favourit_view.dart';
import '../../features/10_profile/presentation/screens/orders_history_view.dart';
import '../../features/10_profile/presentation/screens/payment_methods.dart';
import '../../features/10_profile/presentation/screens/personal_info_view.dart';
import '../../features/10_profile/presentation/screens/profile_menu_view.dart';
import '../../features/10_profile/presentation/screens/who_we_are.dart';
import 'app_routes.dart';
import 'nav_bar_navigator.dart';
import 'route_observer.dart';


abstract class AppRouter
{
  AppRouter._();
  static final navigatorState = GlobalKey<NavigatorState>(debugLabel: 'root');
  static final router = GoRouter(
    navigatorKey: navigatorState,
    debugLogDiagnostics: kDebugMode,
    observers: [RouteTracker()],
    initialLocation: AppRoutes.splash,
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
        builder: (_, _) => ForgetPasswordEmail(),
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

      ///[ Filtered_Products Feature ]
      GoRoute(
        path: AppRoutes.filteredProducts,
        name: AppRoutes.filteredProducts,
        builder: (_, _) => FilteredProducts(),
      ),
      ///[ Item_Details Feature ]
      GoRoute(
        path: AppRoutes.itemsDetails,
        name: AppRoutes.itemsDetails,
        builder: (_, state)
        {
          final fruitEntity = state.extra as FruitEntity;
          return ItemDetails(fruitEntity: fruitEntity,);
        } 
      ),
      
      ///[ Rate Feature]
      GoRoute(
        path: AppRoutes.rate,
        name: AppRoutes.rate,
        builder: (_, _) => const ReviewAndRating(),
      ),

      ///[ CheckOut Feature]
      // [Checkout Ship]
      GoRoute(
        path: AppRoutes.checkoutShip,
        name: AppRoutes.checkoutShip,
        builder: (_, _) => const CheckoutShip(),
      ),
      // [Checkout Address]
      GoRoute(
        path: AppRoutes.checkoutAddress,
        name: AppRoutes.checkoutAddress,
        builder: (_, _) => const CheckoutAddress(),
      ),
      // [Checkout Payment]
      GoRoute(
        path: AppRoutes.checkoutPayment,
        name: AppRoutes.checkoutPayment,
        builder: (_, _) => const CheckoutPayment(),
      ),
      // [Checkout Payment]
      GoRoute(
        path: AppRoutes.checkoutReview,
        name: AppRoutes.checkoutReview,
        builder: (_, _) => const CheckoutReview(),
      ),
      // [Checout Payment Review]
      GoRoute(
        path: AppRoutes.paymentSuccess,
        name: AppRoutes.paymentSuccess,
        builder: (_, _) => const PaymentSuccess(),
      ),
      // [Checkout Order Tracking]
      GoRoute(
        path: AppRoutes.trackOrder,
        name: AppRoutes.trackOrder,
        builder: (_, _) => const TrackOrder(),
      ),

      // [Personal Information]
      GoRoute(
        path: AppRoutes.personalInfo,
        name: AppRoutes.personalInfo,
        builder: (_, _) => PersonalInfo(),
      ),
      // [Orders History]
      GoRoute(
        path: AppRoutes.ordersHistory,
        name: AppRoutes.ordersHistory,
        builder: (_, _) => const OrdersHistory(),
      ),
      GoRoute(
        path: AppRoutes.paymentMethods,
        name: AppRoutes.paymentMethods,
        builder: (_, _) => PaymentMethods(),
      ),
      GoRoute(
        path: AppRoutes.addNewPaymentCard,
        name: AppRoutes.addNewPaymentCard,
        builder: (_, _) => AddNewPaymentCard(),
      ),
      GoRoute(
        path: AppRoutes.favourit,
        name: AppRoutes.favourit,
        builder: (_, _) => const Favourit(),
      ),
      GoRoute(
        path: AppRoutes.whoWeAre,
        name: AppRoutes.whoWeAre,
        builder: (_, _) => const WhoWeAre(),
      ),

      /// [ Stateful Shell ]
      StatefulShellRoute.indexedStack(
        builder: (_, _, navigationShell) => MainScaffold(navigationShell: navigationShell),
        branches:
        [
          /// [Brach 0: Home]
          StatefulShellBranch(
            routes:
            [
              GoRoute(
                path: AppRoutes.home,
                name: AppRoutes.home,
                builder: (_, _) => Home(),
              ),
            ],
          ),

          /// [Branch 1: Products]
          StatefulShellBranch(
            routes:
            [
              GoRoute(
                path: AppRoutes.products,
                name: AppRoutes.products,
                builder: (_, _) => Products(),
              ),
            ],
          ),

          /// [Branch 2: Cart]
          StatefulShellBranch(
            routes:
            [
              GoRoute(
                path: AppRoutes.cart,
                name: AppRoutes.cart,
                builder: (_, _) => const Cart(),
              ),
            ],
          ),

          /// [Branch 3: Profile]
          StatefulShellBranch(
            routes:
            [
              GoRoute(
                path: AppRoutes.profile,
                name: AppRoutes.profile,
                builder: (_, _) => const Profile()
              ),
            ],
          ),
        ],
      ),
    ]
  );
}
