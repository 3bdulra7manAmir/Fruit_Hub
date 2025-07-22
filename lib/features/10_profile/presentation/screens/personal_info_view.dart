import 'package:e_commerce_app/core/extensions/widget_padding.dart';
import 'package:e_commerce_app/core/widgets/buttons/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../../../../core/widgets/textform_field.dart';

class PersonalInfo extends StatelessWidget
{
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(barTitle: "الملف الشخصي",),
      body: CustomSingleChild(
        children:
        [
          Sizes.s24.verticalSpace,
          Text("المعلومات الشخصيه", style: AppStyles.extraLight(fontColor: AppColors.color.kBlack001),),
          Sizes.s8.verticalSpace,
          CustomTextFormField(
            hintText: "أحمد ياسر",
            suffixIcon: SvgPicture.asset("assets/icons/Personal_Info/Edit_Grey.svg", fit: BoxFit.scaleDown,),
            
          ),
          Sizes.s8.verticalSpace,
          CustomTextFormField(
            hintText: "mail@mail.com",
            suffixIcon: SvgPicture.asset("assets/icons/Personal_Info/Edit_Grey.svg", fit: BoxFit.scaleDown,),
            
          ),
          Sizes.s16.verticalSpace,
          Text("تغيير كلمة المرور", style: AppStyles.extraLight(fontColor: AppColors.color.kBlack001),),
          Sizes.s8.verticalSpace,
          CustomTextFormField(
            hintText: "كلمة المرور الحالي",
            suffixIcon: SvgPicture.asset(AppAssets.icons.eyeGrey,).paddingDirectionalOnly(end: 30.w,)
          ),
          Sizes.s8.verticalSpace,
          CustomTextFormField(
            hintText: "كلمة المرور الجديده",
            suffixIcon: SvgPicture.asset(AppAssets.icons.eyeGrey,).paddingDirectionalOnly(end: 30.w,)
          ),
          Sizes.s8.verticalSpace,
          CustomTextFormField(
            hintText: "تأكيد كلمة المرور الجديده",
            suffixIcon: SvgPicture.asset(AppAssets.icons.eyeGrey,).paddingDirectionalOnly(end: 30.w,)
          ),
          Sizes.s74.verticalSpace,
          CustomButton(onPressed: (){}, text: "حفظ التغييرات"),
          Sizes.s16.verticalSpace,
        ]
      ),
    );
  }
}