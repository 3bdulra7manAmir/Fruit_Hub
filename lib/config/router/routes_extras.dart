import 'package:go_router/go_router.dart';

import 'app_router.dart';
import 'app_routes.dart';

extension AppRouterNavigator on GoRouter
{
  void pushSearchString({required String fruitName})
  {
    AppRouter.router.pushNamed(AppRoutes.search, queryParameters: {'fruitName': fruitName});
  }

}