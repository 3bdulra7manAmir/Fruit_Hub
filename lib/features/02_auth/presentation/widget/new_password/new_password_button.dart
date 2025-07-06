import 'dart:developer';
import 'package:e_commerce_app/core/constants/app_borders.dart';
import 'package:e_commerce_app/core/extensions/widget_margin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/buttons/custom_button.dart';
import '../../../../../core/widgets/popers/dialog.dart';

class NewPasswordButtonWidget extends StatelessWidget
{
  const NewPasswordButtonWidget({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context)
  {
    return CustomButton(
      text: "إنشاء كلمة مرور جديدة",
      onPressed: ()
      {
        if (!formKey.currentState!.validate())
        {
          log("Create Password Has been Pressed...");
          showSuccessDialog(context);
          //AppRouter.router.pushReplacementNamed(AppRoutes.login);
        }
        else
        {
          log("InValid Creation...");
        }
      },  
    );
  }
}

void showSuccessDialog(context)
{
  customAppDialog(
    context: context,
    backgroundColor: AppColors.color.kWhite001,
    shape: RoundedRectangleBorder(
    borderRadius: AppRadiuses.circular.xXXSmall,),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children:
      [
        Sizes.size50.verticalSpace,
        Stack(
          children:
          [
            SvgPicture.asset("assets/icons/New_Password/Success_Green.svg"),
            Positioned(
              bottom: 0, right: 30.h, left: 90.w, top: 25.h,
              child: SvgPicture.asset("assets/icons/New_Password/Remove_Black.svg")
            ),
          ],
        ),
        Sizes.size29.verticalSpace,
        Text(
          "تم تغيير الباسورد بنجاح",
          style: AppStyles.bold(fontColor: AppColors.color.kBlack001),
        ),
        Sizes.size50.verticalSpace,
      ],
    )
  );
}