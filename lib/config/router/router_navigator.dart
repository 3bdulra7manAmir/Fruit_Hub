import 'router.dart';
import 'package:go_router/go_router.dart';
import 'routes.dart';

extension AppRouterNavigator on GoRouter
{
  void pushSearchString({required String fruitName})
  {
    AppRouter.router.pushNamed(AppRoutes.search, queryParameters: {'fruitName': fruitName});
  }

}
