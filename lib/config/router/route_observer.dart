import 'package:flutter/material.dart';

import 'app_router.dart';

class NavigatorObserverWithTracking extends NavigatorObserver
{
  @override
  void didPush(Route route, Route? previousRoute)
  {
    super.didPush(route, previousRoute);
    _setCurrentRoute(route);
  }

  @override
  void didPop(Route route, Route? previousRoute)
  {
    super.didPop(route, previousRoute);
    _setCurrentRoute(previousRoute);
  }

  void _setCurrentRoute(Route? route)
  {
    if (route?.settings.name != null)
    {
      AppRouter.currentRoute = route!.settings.name;
    }
  }
}
