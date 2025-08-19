import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/i18n/localization/localization_controller.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/extensions/transform.dart';
import '../../../../../core/services/database/firebase/firebase_operations/sign_out.dart';

class LogOutWidget extends StatelessWidget
{
  const LogOutWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: AppPadding.directional.logOutCard,
      height: 41.h, width: 375.w, alignment: Alignment.center,
      decoration: BoxDecoration(color: AppColors.color.kGreen006),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        [
          const Expanded(child: LogoutTextWidget(),),
          Expanded(
            child: Consumer(
              builder: (_, ref, _) => GestureDetector(
                onTap: () async {
                  await FirebaseSignout.instance.signOut();
                  await AppRouter.router.pushReplacementNamed(AppRoutes.login);
                },
                child: const LogoutImgWidget().flipForRtl(ref.watch(localizationProvider))
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class LogoutTextWidget extends StatelessWidget
{
  const LogoutTextWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Text(S.current.logout, style: AppStyles.extraLight(fontColor: AppColors.color.kGreen011),);
  }
}


class LogoutImgWidget extends StatelessWidget
{
  const LogoutImgWidget({super.key,});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(AppAssets.icons.signOut);
  }
}
