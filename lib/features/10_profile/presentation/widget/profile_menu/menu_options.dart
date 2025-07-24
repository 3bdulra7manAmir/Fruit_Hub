import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/toggle_button.dart';
import '../../controller/language_informer.dart';
import '../../controller/notification_controller.dart';
import '../../controller/theme_informer.dart';

class ProfileOptions extends StatelessWidget
{
  const ProfileOptions({
  super.key, 
  this.onTap, 
  required this.leading, 
  this.isArrow = true,
  this.caseWidget,
  required this.title});

  final void Function()? onTap;
  final String leading;
  final bool isArrow;
  final Widget? caseWidget;
  final String title;

  @override
  Widget build(BuildContext context)
  {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      onTap: onTap,
      leading: SvgPicture.asset(leading),
      trailing: isArrow ? SvgPicture.asset('assets/icons/Profile/Left_Black_Arrow.svg') : caseWidget,
      title: Text(title, style: AppStyles.extraLight(fontColor: AppColors.color.kGrey002),),
      shape: Border(bottom: BorderSide(color: AppColors.color.kGrey016,)),
    );
  }
}


class OptionsMenuWidget extends StatelessWidget
{
  const OptionsMenuWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        ProfileOptions(
          leading: 'assets/icons/Profile/User_Green.svg',
          title: 'الملف الشخصي',
          onTap: ()
          {
            log('Profile has been Pressed...');
            //AppRouter.router.pushNamed(AppRoutes.);
          },
        ),
        ProfileOptions(
          leading: 'assets/icons/Profile/Box_Green.svg',
          title: 'طلباتي',
          onTap: ()
          {
            log('Orders has been Pressed...');
            //AppRouter.router.pushNamed(AppRoutes.);
          },
        ),
        ProfileOptions(
          leading: 'assets/icons/Profile/Wallet_Green.svg',
          title: 'المدفوعات',
          onTap: ()
          {
            log('Payments has been Pressed...');
            //AppRouter.router.pushNamed(AppRoutes.);
          },
        ),
        ProfileOptions(
          leading: 'assets/icons/Profile/Heart_Green.svg',
          title: 'المفضلة',
          onTap: ()
          {
            log('Favourit has been Pressed...');
            //AppRouter.router.pushNamed(AppRoutes.);
          },
        ),
        ProfileOptions(
          leading: 'assets/icons/Profile/Bill_Green.svg',
          title: 'الاشعارات',
          isArrow: false,
          caseWidget: SwitchButtonWidget(provider: toggleSwitchNotificationsProvider,),
          onTap: ()
          {
            log('Notifications has been Pressed...');
            //AppRouter.router.pushNamed(AppRoutes.);
          },
        ),
        Consumer(
          builder: (context, ref, child) => ProfileOptions(
            leading: 'assets/icons/Profile/Language_Green.svg',
            title: 'اللغة',
            isArrow: false,
            caseWidget: Row(
              mainAxisSize: MainAxisSize.min,
              children:
              [
                Text('العربية', style: AppStyles.extraLight(fontWeight: AppFontWeights.regularWeight, fontColor: AppColors.color.kBlack001),),
                Sizes.s2.horizontalSpace,
                SvgPicture.asset(AppAssets.icons.leftBlackArrow),
              ],
            ),
            onTap: () => ref.read(languageInformerProvider.notifier).toggleLanguage(),
          ),
        ),
        ProfileOptions(
          leading: 'assets/icons/Profile/Magic_Green.svg',
          isArrow: false,
          caseWidget: SwitchButtonWidget(provider: themeInformerProvider,),
          title: 'الوضع',
          onTap: ()
          {
            log('Theme has been Pressed...');
            //AppRouter.router.pushNamed(AppRoutes.);
          },
        )
      ]
    );
  }
}