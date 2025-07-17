import 'package:e_commerce_app/config/theme/color_manager/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../core/widgets/appbar.dart';
import '../../core/widgets/navbar/nav_bar_model.dart';
import '../../core/widgets/navbar/nav_bar_widget.dart';
import '../../features/03_home/presentation/widget/user_appbar/user_appbar_body.dart';

class MainScaffold extends StatelessWidget
{
  final StatefulNavigationShell navigationShell;

  MainScaffold({super.key, required this.navigationShell});

  void _goBranch(int index)
  {
    navigationShell.goBranch(index, initialLocation: index == navigationShell.currentIndex);
  }

  final List<NavBarItemModel> items =
  [
    NavBarItemModel(
      activeColor: AppColors.color.kGreen001,
      title: 'الرئيسية',
      activeIcon: SvgPicture.asset('assets/icons/NavBar/Home_active.svg'),
      inactiveIcon: SvgPicture.asset('assets/icons/NavBar/Home_not_active.svg'),
    ),
    NavBarItemModel(
      activeColor: AppColors.color.kGreen001,
      title: 'المنتجات',
      activeIcon: SvgPicture.asset('assets/icons/NavBar/Products_active.svg'),
      inactiveIcon: SvgPicture.asset('assets/icons/NavBar/Products_not_active.svg'),
    ),
    NavBarItemModel(
      activeColor: AppColors.color.kGreen001,
      title: 'سلة التسوق',
      activeIcon: SvgPicture.asset('assets/icons/NavBar/Cart_active.svg'),
      inactiveIcon: SvgPicture.asset('assets/icons/NavBar/Cart_not_active.svg'),
    ),
    // NavBarItemModel(
    //   title: 'حسابي',
    //   activeIcon: SvgPicture.asset('assets/icons/NavBar/User_active.svg'),
    //   inactiveIcon: SvgPicture.asset('assets/icons/NavBar/User_not_active.svg'),
    // ),
  ];

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
      // case 3:
      //   return AppBar(title: const Text("Profile AppBar"));
      default:
        return null;
    }
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
  
  
}
