import 'package:go_router/go_router.dart';

import '../../features/03_home/domain/entity/fruit_entity.dart';
import 'app_router.dart';
import 'app_routes.dart';

extension AppRouterNavigator on GoRouter
{
  void pushSearchString({required String fruitName})
  {
    AppRouter.router.pushNamed(AppRoutes.search, extra: fruitName,);
  }
  
  void pushFruitDetails({required FruitEntity fruitEntity,})
  {
    AppRouter.router.pushNamed(AppRoutes.itemsDetails, extra: fruitEntity,);
  }
}