import 'package:e_commerce_app/core/extensions/widget_margin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/column.dart';
import '../widget/profile_menu/general_text.dart';
import '../widget/profile_menu/help_text.dart';
import '../widget/profile_menu/logout.dart';
import '../widget/profile_menu/menu_options.dart';
import '../widget/profile_menu/user_profile_img.dart';
import '../widget/profile_menu/user_profile_info.dart';
import '../widget/profile_menu/who_we_are.dart';


class Profile extends StatelessWidget
{
  const Profile({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomSingleChild(
      isMargin: false,
      children:
      [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Row(
              children:
              [
                UserProfileImg(),
                Sizes.s24.horizontalSpace,
                UserProfileInfo(),
              ],
            ),
            Sizes.s16.verticalSpace,
            GeneralTextWidget(),
            Sizes.s16.verticalSpace,
            OptionsMenuWidget(),
            Sizes.s22.verticalSpace,
            HelpTextWidget(),
            Sizes.s16.verticalSpace,
            WhoWeAreTextWidget(),
          ]
        ).marginSymmetric(horizontal: 16.w),
        Sizes.s63.verticalSpace,
        LogOutWidget(),
        Sizes.s33.verticalSpace,
      ]
    );
  }
}
