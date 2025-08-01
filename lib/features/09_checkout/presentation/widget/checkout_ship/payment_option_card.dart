import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';

class PaymentOptionCard extends StatelessWidget
{
  const PaymentOptionCard({
    super.key,
    required this.isSelected,
  });
  final bool isSelected;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: AppColors.color.kGrey007.withValues(alpha: 0.2),
        borderRadius: AppRadiuses.circular.xXXXXSmall,
        border: Border.all(color: isSelected ? AppColors.color.kGreen001 : Colors.transparent,),
      ),
      child: Row(
        children:
        [
          PaymentRadioButtonWidget(isSelected: isSelected),
          Sizes.s10.horizontalSpace,
          const PaymentOptionTextWidget(),
          const Spacer(),
          const PaymentCardPriceTextWidget(),
        ],
      ),
    );
  }
}

class PaymentRadioButtonWidget extends StatelessWidget
{
  const PaymentRadioButtonWidget({super.key, required this.isSelected,});
  final bool isSelected;

  @override
  Widget build(BuildContext context)
  {
    return Container(width: 18.w, height: 18.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle, 
        border: Border.all(color: AppColors.color.kGrey002,),
      ),
      child: isSelected
      ? Center(
          child: Container(width: 10.w, height: 10.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.color.kGreen001,
            ),
          ),
        )
      : const SizedBox.shrink(),
    );
  }
}

class PaymentOptionTextWidget extends StatelessWidget
{
  const PaymentOptionTextWidget({
    super.key,

  });

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Text(S.current.cashOnDelivery, style: AppStyles.extraLight(fontColor: AppColors.color.kBlack004),),
        Sizes.s6.verticalSpace,
        Text(S.current.pickup2, style: AppStyles.extraLight(
          fontColor: AppColors.color.kBlack004.withValues(alpha: 0.5)),),
      ],
    );
  }
}

class PaymentCardPriceTextWidget extends StatelessWidget
{
  const PaymentCardPriceTextWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children:
      [
        Text('40 جنيه', style: AppStyles.extraLight(fontWeight: AppFontWeights.boldWeight, 
            fontColor: AppColors.color.kGreen008
          ),
        ),
      ],
    );
  }
}
