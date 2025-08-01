import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/widgets/appbar/default_appbar/appbar.dart';
import '../../core/widgets/appbar/user_appbar/user_appbar_body.dart';
import '../../core/widgets/navbar/nav_bar_items_list.dart';
import '../../core/widgets/navbar/nav_bar_widget.dart';
import '../i18n/generated/l10n.dart';


class MainScaffold extends StatelessWidget
{
  const MainScaffold({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  void _goBranch(int index)
  {
    navigationShell.goBranch(index, initialLocation: index == navigationShell.currentIndex);
  }

  @override
  Widget build(BuildContext context)
  {
    final currentIndex = navigationShell.currentIndex;
    return Scaffold(
      appBar: _buildAppBar(currentIndex),
      body: navigationShell,
      bottomNavigationBar: CustomNavBar(
        currentIndex: currentIndex,
        items: items,
        onTap: _goBranch,
      ),
    );
  }

  PreferredSizeWidget? _buildAppBar(int index)
  {
    switch (index)
    {
      case 0:
        return const UserAppBar();
      case 1:
        return CustomAppBar(title: S.current.products, isNotifications: true, isCustomBack: false,);
      case 2:
        return CustomAppBar(title: S.current.cart, isCustomBack: false,);
      case 3:
        return CustomAppBar(title: S.current.myAccount, isCustomBack: false,);
      default:
        return null;
    }
  }

}