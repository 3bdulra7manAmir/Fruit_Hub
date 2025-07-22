import 'dart:developer';

import 'package:e_commerce_app/config/theme/font_manager/font_weights.dart';
import 'package:e_commerce_app/core/constants/app_styles.dart';
import 'package:e_commerce_app/core/widgets/buttons/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../../../../core/widgets/listview_builder.dart';

class PaymentMethods extends StatelessWidget
{
  const PaymentMethods({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(
        barTitle: "المدفوعات", isCustomBack: true, isNotifications: true,
        barActions: [SvgPicture.asset(AppAssets.icons.editGreyV2, )],
      ),
      body: CustomSingleChild(
        children:
        [
          Sizes.s16.verticalSpace,
          PaymentMethodsListWidget(),
          if(1.sw <= 360 && 1.sh <= 640)...
          [
            Sizes.s150.verticalSpace,
          ]
          else...[Sizes.s300.verticalSpace,],
          AddNewPaymentMethodButtonWidget()
        ]
      ),
    );
  }
}


class PaymentMethodsListWidget extends StatelessWidget
{
  const PaymentMethodsListWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomListviewBuilder(
      itemBuilder: (context, index) => PaymentMethodField(),
      separatorBuilder: (context, index) => Sizes.s16.verticalSpace,
      itemCount: 2,
    );
  }
}


class PaymentMethodField extends StatelessWidget
{
  const PaymentMethodField({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        borderRadius: AppRadiuses.circular.xXXSmall,
        color: AppColors.color.kGrey025,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children:
        [
          Text("**** 1234 ", style: AppStyles.bold(
            fontColor: AppColors.color.kGrey002, 
            fontWeight: AppFontWeights.semiBoldWeight),
            textDirection: TextDirection.ltr,
          ),
          Sizes.s15.horizontalSpace,
          SvgPicture.asset(AppAssets.icons.mastercard),
          Sizes.s15.horizontalSpace,
        ],
      ),
    );
  }
}

class AddNewPaymentMethodButtonWidget extends StatelessWidget
{
  const AddNewPaymentMethodButtonWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomButton(
      onPressed: ()
      {
        log("Add new Payment Method has been Pressed");
      },
      text: ,
    );
  }
}