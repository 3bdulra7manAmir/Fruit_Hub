import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/utils/logger/app_logger.dart';
import 'price_filter_modal_sheet/modal_sheet_body.dart';

class OurProductsWidget extends StatelessWidget
{
  const OurProductsWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:
      [
        const OurProductsTextWidget(),
        GestureDetector(
          onTap: ()
          {
            AppLogger.debug('Arrows Has been Pressed...');
            priceFilterSheet(context);
          },
          child: const FiltrationArrowsWidget()
        ),
      ],
    );
  }
}


class FiltrationArrowsWidget extends StatelessWidget
{
  const FiltrationArrowsWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 31.h, width: 44.w, alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: AppRadiuses.circular.xXXXXSmall,
        border: Border.all(color: AppColors.color.kWhite002),
        color: AppColors.color.kWhite001,
      ), child: SvgPicture.asset(AppAssets.icons.swapArrows),
    );
  }
}


class OurProductsTextWidget extends StatelessWidget
{
  const OurProductsTextWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Text(S.current.ourProducts, style: AppStyles.bold(fontColor: AppColors.color.kBlack001),);
  }
}

