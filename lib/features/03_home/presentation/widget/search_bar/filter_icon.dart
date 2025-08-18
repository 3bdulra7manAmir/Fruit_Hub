import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_images.dart';
import '../../../../../core/utils/logger/app_logger.dart';
import '../../../../06_products/presentation/widget/price_filter_modal_sheet/modal_sheet_body.dart';

class FilterIconWidget extends StatelessWidget
{
  const FilterIconWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap: ()
      {AppLogger.debug('Filter Settings has been Pressed...'); priceFilterSheet(context);},
      child: Image.asset(AppAssets.icons.filterGreyPNG, width: 20.w, height: 20.h,)
    );
  }
}