import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/utils/logic/toggle.dart';
import '../../../../../core/widgets/identity_widgets/widgets.dart';
import '../../../../../core/widgets/toggle_button.dart';
import '../../controller/profile_menu/language_informer.dart';
import '../../controller/profile_menu/notification_controller.dart';
import '../../controller/profile_menu/theme_informer.dart';


class ProfileOptions extends StatelessWidget
{
  const ProfileOptions({
    super.key,
    this.onTap,
    required this.leading,
    this.isArrow = true,
    this.caseWidget,
    required this.title,
  });

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
      trailing: isArrow ? SvgPicture.asset(WidgetManager.menuOptions(context), colorFilter: ColorFilter.mode(AppColors.color.kBlack001, BlendMode.srcIn),) : caseWidget,
      title: Text(title, style: AppStyles.extraLight(fontColor: AppColors.color.kGrey002),),
      shape: Border(bottom: BorderSide(color: AppColors.color.kGrey016)),
    );
  }
}


class OptionsMenuWidget extends StatelessWidget
{
  const OptionsMenuWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProfileOptions(
          leading: AppAssets.icons.userGreen,
          title: S.current.profile,
          onTap: () {
            log('Profile has been Pressed...');
            AppRouter.router.pushNamed(AppRoutes.personalInfo);
          },
        ),
        ProfileOptions(
          leading: AppAssets.icons.boxGreen,
          title: S.current.myOrders,
          onTap: () {
            log('Orders has been Pressed...');
            AppRouter.router.pushNamed(AppRoutes.ordersHistory);
          },
        ),
        ProfileOptions(
          leading: AppAssets.icons.walletGreen,
          title: S.current.payments,
          onTap: () {
            log('Payments has been Pressed...');
            AppRouter.router.pushNamed(AppRoutes.paymentMethods);
          },
        ),
        ProfileOptions(
          leading: AppAssets.icons.hartGreen,
          title: S.current.favorites,
          onTap: () {
            log('Favourit has been Pressed...');
            AppRouter.router.pushNamed(AppRoutes.favourit);
          },
        ),
        ProfileOptions(
          leading: AppAssets.icons.billGreen,
          title: S.current.notifications,
          isArrow: false,
          caseWidget: SwitchButtonWidget(
            provider: toggleSwitchNotificationsProvider,
          ),
          onTap: () => log('Notifications has been Pressed...'),
        ),
        Consumer(
          builder: (_, ref, _) => ProfileOptions(
            leading: AppAssets.icons.languageGreen,
            title: S.current.language,
            isArrow: false,
            onTap: () => ref.read(languageInformerProvider.notifier).toggleLanguage(),
            caseWidget: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(S.current.arabic, style: AppStyles.extraLight(fontWeight: AppFontWeights.regularWeight,
                    fontColor: AppColors.color.kBlack001,),),
                Sizes.s2.horizontalSpace,
                SvgPicture.asset(WidgetManager.menuOptions(context), colorFilter: ColorFilter.mode(AppColors.color.kBlack001, BlendMode.srcIn),),
              ],
            ),
          ),
        ),
        Consumer(
          builder: (_, ref, _) => ProfileOptions(
            leading: AppAssets.icons.magicGreen,
            isArrow: false,
            caseWidget: SwitchButtonWidget(provider: themeInformerProvider),
            title: S.current.theme,
            onTap: () => (ref.read(themeInformerProvider.notifier) as ToggleSwitchBase).toggle(),
          ),
        ),
      ],
    );
  }
}
