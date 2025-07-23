import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/widgets/appbar.dart';
import '../../core/widgets/navbar/nav_bar_items_list.dart';
import '../../core/widgets/navbar/nav_bar_widget.dart';
import '../../features/03_home/presentation/widget/user_appbar/user_appbar_body.dart';

class MainScaffold extends StatelessWidget
{
  final StatefulNavigationShell navigationShell;

  const MainScaffold({super.key, required this.navigationShell});

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
        return CustomAppBar(barTitle: "المنتجات", isNotifications: true, isCustomBack: false,);
      case 2:
        return CustomAppBar(barTitle: "السلة",);
      case 3:
        return CustomAppBar(barTitle: "حسابي", isCustomBack: false,);
      default:
        return null;
    }
  }

}