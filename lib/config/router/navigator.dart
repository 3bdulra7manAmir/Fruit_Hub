import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../core/widgets/navbar/nav_bar_model.dart';
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
        items: [
          NavBarItemModel(
            title: 'Home',
            activeIcon: SvgPicture.asset('assets/icons/NavBar/Home_active.svg', color: Colors.white),
            inactiveIcon: SvgPicture.asset('assets/icons/NavBar/Home_inactive.svg', color: Colors.grey),
          ),
          NavBarItemModel(
            title: 'Products',
            activeIcon: SvgPicture.asset('assets/icons/NavBar/Products_active.svg', color: Colors.white),
            inactiveIcon: SvgPicture.asset('assets/icons/NavBar/Products_inactive.svg', color: Colors.grey),
          ),
          NavBarItemModel(
            title: 'Notifications',
            activeIcon: SvgPicture.asset('/assets/icons/NavBar/', color: Colors.white),
            inactiveIcon: SvgPicture.asset('assets/icons/NavBar/Cart_inactive.svg', color: Colors.grey),
          ),
          NavBarItemModel(
            title: 'Cart',
            activeIcon: SvgPicture.asset('assets/icons/NavBar/User_active.svg', color: Colors.white),
            inactiveIcon: SvgPicture.asset('assets/icons/NavBar/User_inactive.svg', color: Colors.grey),
          ),
        ],
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
        return AppBar(title: const Text("Products AppBar"));
      case 2:
        return AppBar(title: const Text("Notifications AppBar"));
      case 3:
        return AppBar(title: const Text("Cart AppBar"));
      default:
        return null;
    }
  }
}
