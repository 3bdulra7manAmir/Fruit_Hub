import 'package:flutter/material.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_styles.dart';

class UserCommentTextWidget extends StatelessWidget
{
  const UserCommentTextWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Text('هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها',
    style: AppStyles.extraLight(
      fontColor: AppColors.color.kGrey002, 
      fontWeight: AppFontWeights.regularWeight
      ),maxLines: 3,
    );
  }
}
