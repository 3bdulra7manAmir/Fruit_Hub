import 'package:e_commerce_app/core/extensions/widget_shadow_box.dart';
import 'package:flutter/material.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../config/theme/font_manager/font_weights.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_shadow_boxes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/textform_field.dart';

class CommentFieldWidget extends StatelessWidget
{
  const CommentFieldWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      prefixIcon: Image.asset(AppAssets.icons.userComment),
      fillColor: AppColors.color.kWhite001,
      hintText: "اكتب التعليق..",
      hintStyle: AppStyles.extraLight(
        fontWeight: AppFontWeights.regularWeight, 
        fontColor: AppColors.color.kBlack002
      ),
    ).withShadow(
      shadow: AppShadowBoxes.commentField,
      borderRadius: AppRadiuses.circular.xSmall,
      border: Border.all(color: AppColors.color.kWhite003),
    );
  }
}
