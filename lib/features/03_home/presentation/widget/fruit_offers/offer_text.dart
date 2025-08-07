import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/i18n/localization/localization_controller.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/paint_clipper.dart';
import 'shop_now_button.dart';

class OfferTextWidget extends ConsumerWidget
{
  const OfferTextWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final CustomClipper<Path>? clipper;
    if(ref.watch(localizationProvider) == const Locale('en'))
    {clipper = FlippedOfferWaveClipper();}
    else
    {clipper = OfferWaveClipper();}
    
    return ClipPath(
      clipper: clipper,
      child: Container(
        width: 175.w,
        padding: AppPadding.directional.offerText,
        decoration: BoxDecoration(
          borderRadius: AppRadiuses.circular.xXXXXSmall, 
          color: AppColors.color.kGreen003,
        ),
        child: const FruitCardWidget(),
      ),
    );
  }
}


class FruitCardWidget extends StatelessWidget
{
  const FruitCardWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Sizes.s25.verticalSpace,
        Text(S.current.eidOffers, style: AppStyles.extraLight(fontColor: AppColors.color.kWhite001, fontWeight: AppFontWeights.regularWeight),),
        Sizes.s8.verticalSpace,
        Row(
          children:
          [
            Text('خصومات', style: AppStyles.extraBold(fontColor: AppColors.color.kWhite001),),
            Text(' ', style: AppStyles.extraBold(fontColor: AppColors.color.kWhite001),),
            Text('25%', style: AppStyles.extraBold(fontColor: AppColors.color.kWhite001),),
          ],
        ),
        Sizes.s8.verticalSpace,
        const ShopNowButtonWidget(),
        Sizes.s30.verticalSpace,
      ],
    );
  }
}
