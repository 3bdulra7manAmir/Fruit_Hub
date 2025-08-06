import 'package:flutter/material.dart';


class NavigatorObserverWithTracking extends RouteObserver<PageRoute<dynamic>>
{
  static String? currentRouteName;
  static String? previousRouteName;

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);

    if (route.settings.name != null && route.settings.name!.isNotEmpty)
    {
      previousRouteName = currentRouteName;
      currentRouteName = route.settings.name;
    }
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);

    if (previousRoute?.settings.name != null && previousRoute!.settings.name!.isNotEmpty) {
      currentRouteName = previousRoute.settings.name;
    }
  }
  
}
