import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../common_container.dart';

class ConfirmAddressWidget extends StatelessWidget
{
  const ConfirmAddressWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CommonContainerWidget(
      padding: AppPadding.symmetric.addressCard,
      child: Column(
        children:
        [
          const DeliveryAddressEditWidget(),
          Sizes.s8.verticalSpace,
          const DeliveryAddressWidget(),
        ],
      )
    );
  }
}


class DeliveryAddressEditWidget extends StatelessWidget
{
  const DeliveryAddressEditWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Text(S.current.deliveryAddress, style: AppStyles.extraLight(
          fontWeight: AppFontWeights.boldWeight, 
          fontColor: AppColors.color.kBlack001),
        ),
        const Spacer(),
        GestureDetector(
          onTap: ()
          {
            log('Edit has been Pressed');
          },
          child: Row(
            children:
            [
              SvgPicture.asset(AppAssets.icons.editGrey),
              Sizes.s4.horizontalSpace,
              Text(S.current.edit, style: AppStyles.extraLight(fontColor: AppColors.color.kGrey002),),
            ],
          ),
        ),
      ],
    );
  }
}


class DeliveryAddressWidget extends StatelessWidget
{
  const DeliveryAddressWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        SvgPicture.asset(AppAssets.icons.locationGrey),
        Sizes.s8.horizontalSpace,
        Text('شارع النيل، مبنى رقم ١٢٣', style: AppStyles.bold(
          fontWeight: AppFontWeights.regularWeight, 
          fontColor: AppColors.color.kGrey001),
        ),
      ],
    );
  }
}
