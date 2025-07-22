import 'dart:developer';
import 'package:e_commerce_app/core/extensions/widget_margin.dart';
import 'package:e_commerce_app/features/10_profile/presentation/controller/language_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../config/theme/font_manager/font_weights.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../../core/widgets/column.dart';


class Profile extends StatelessWidget
{
  const Profile({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(barTitle: "حسابي", isCustomBack: false,),
      body: CustomSingleChild(
        isMargin: false,
        children:
        [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Row(
                children:
                [
                  UserProfileImg(),
                  Sizes.s24.horizontalSpace,
                  UserProfileInfo(),
                ],
              ),
              Sizes.s16.verticalSpace,
              GeneralTextWidget(),
              Sizes.s16.verticalSpace,
              OptionsMenuWidget(),
              Sizes.s22.verticalSpace,
              HelpTextWidget(),
              Sizes.s16.verticalSpace,
              ProfileOptions(
                leading: "assets/icons/Profile/Info_Circle_Green.svg",
                title: "من نحن",
                onTap: ()
                {
                  log("Profile");
                  //AppRouter.router.pushNamed(AppRoutes.);
                },
              )
            ]
          ).marginSymmetric(horizontal: 16.w),
          Sizes.s63.verticalSpace,
          LogOutWidget(),
          Sizes.s33.verticalSpace,
        ]
      ),
    );
  }
}


class UserProfileImg extends StatelessWidget
{
  const UserProfileImg({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      alignment: Alignment.center, clipBehavior: Clip.none,
      children:
      [
        Image.asset("assets/icons/Profile/User_Profile.png", width: 73.w, height: 73.h,),
        Positioned(
          bottom: -11.h,
          child: Container(
            padding: AppPadding.all.userCamera,
            decoration: BoxDecoration(
              color: AppColors.color.kGrey022,
              borderRadius: AppRadiuses.circular.large,
              border: Border.all(color: AppColors.color.kWhite001, width: Sizes.s2.w),
            ),
            child: SvgPicture.asset("assets/icons/Profile/Camera_Green.svg", width: 16.w, height: 16.h,)
          ),
        ),
      ],
    );
  }
}


class UserProfileInfo extends StatelessWidget
{
  const UserProfileInfo({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Text("أحمد ياسر", style: AppStyles.extraLight(fontWeight: AppFontWeights.boldWeight, fontColor: AppColors.color.kBlue001),),
        Sizes.s2.verticalSpace,
        Text("mail@mail.com", style: AppStyles.extraLight(fontWeight: AppFontWeights.regularWeight, fontColor: AppColors.color.kGrey023),),
      ],
    );
  }
}


class GeneralTextWidget extends StatelessWidget
{
  const GeneralTextWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Text("عام", style: AppStyles.bold(
      fontWeight: AppFontWeights.semiBoldWeight, 
      fontColor: AppColors.color.kBlack001),
    );
  }
}


class ProfileOptions extends StatelessWidget
{
  const ProfileOptions({
  super.key, 
  this.onTap, 
  required this.leading, 
  this.isArrow = true,
  this.caseWidget,
  required this.title});

  final void Function()? onTap;
  final String leading;
  final bool isArrow;
  final Widget? caseWidget;
  final String title;

  @override
  Widget build(BuildContext context)
  {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      onTap: onTap,
      leading: SvgPicture.asset(leading),
      trailing: isArrow ? SvgPicture.asset("assets/icons/Profile/Left_Black_Arrow.svg") : caseWidget,
      title: Text(title, style: AppStyles.extraLight(fontColor: AppColors.color.kGrey002),),
      shape: Border(bottom: BorderSide(color: AppColors.color.kGrey016,)),
    );
  }
}


class OptionsMenuWidget extends StatelessWidget
{
  const OptionsMenuWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        ProfileOptions(
          leading: "assets/icons/Profile/User_Green.svg",
          title: "الملف الشخصي",
          onTap: ()
          {
            log("Profile");
            //AppRouter.router.pushNamed(AppRoutes.);
          },
        ),
        ProfileOptions(
          leading: "assets/icons/Profile/Box_Green.svg",
          title: "طلباتي",
          onTap: ()
          {
            log("Profile");
            //AppRouter.router.pushNamed(AppRoutes.);
          },
        ),
        ProfileOptions(
          leading: "assets/icons/Profile/Wallet_Green.svg",
          title: "المدفوعات",
          onTap: ()
          {
            log("Profile");
            //AppRouter.router.pushNamed(AppRoutes.);
          },
        ),
        ProfileOptions(
          leading: "assets/icons/Profile/Heart_Green.svg",
          title: "المفضلة",
          onTap: ()
          {
            log("Profile");
            //AppRouter.router.pushNamed(AppRoutes.);
          },
        ),
        ProfileOptions(
          leading: "assets/icons/Profile/Bill_Green.svg",
          title: "الاشعارات",
          isArrow: false,
          caseWidget: SwitchButtonWidget(),
          onTap: ()
          {
            log("Profile");
            //AppRouter.router.pushNamed(AppRoutes.);
          },
        ),
        ProfileOptions(
          leading: "assets/icons/Profile/Language_Green.svg",
          title: "اللغة",
          isArrow: false,
          caseWidget: Row(
            mainAxisSize: MainAxisSize.min,
            children:
            [
              Text("العربية", style: AppStyles.extraLight(fontWeight: AppFontWeights.regularWeight, fontColor: AppColors.color.kBlack001),),
              Sizes.s2.horizontalSpace,
              SvgPicture.asset("assets/icons/Profile/Left_Black_Arrow.svg"),
            ],
          ),
          onTap: ()
          {
            log("Profile");
            //AppRouter.router.pushNamed(AppRoutes.);
          },
        ),
        ProfileOptions(
          leading: "assets/icons/Profile/Magic_Green.svg",
          isArrow: false,
          caseWidget: SwitchButtonWidget(),
          title: "الوضع",
          onTap: ()
          {
            log("Profile");
            //AppRouter.router.pushNamed(AppRoutes.);
          },
        )
      ]
    );
  }
}


class HelpTextWidget extends StatelessWidget
{
  const HelpTextWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Text("المساعده", style: AppStyles.extraLight(
      fontColor: AppColors.color.kBlack001,
      fontWeight: AppFontWeights.semiBoldWeight,),
    );
  }
}


class LogOutWidget extends StatelessWidget
{
  const LogOutWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: AppPadding.directional.logOutCard,
      height: 41.h, width: 375.w, alignment: Alignment.center,
      decoration: BoxDecoration(color: AppColors.color.kGreen006,),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        [
          Expanded(
            child: Text("تسجيل الخروج", style: AppStyles.extraLight(
              fontColor: AppColors.color.kGreen001,),
            ),
          ),
          Expanded(child: SvgPicture.asset("assets/icons/Profile/SignOut_Green.svg")),
        ],
      ),
    );
  }
}


class SwitchButtonWidget extends ConsumerWidget
{
  const SwitchButtonWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final isSwitched = ref.watch(toggleSwitchLanguageProvider);
    final BorderRadius borderRadius = AppRadiuses.circular.medium;
    final double width = 29.w;
    final double height = 17.h;
    final double circleSize = 15.w;
    final EdgeInsetsGeometry padding = EdgeInsets.all(1.w);

    return GestureDetector(
      onTap: () {
        log(!isSwitched ? "True" : "False");
        ref.read(toggleSwitchLanguageProvider.notifier).toggle();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          color: isSwitched ? AppColors.color.kGreen001 : AppColors.color.kGrey023.withValues(alpha: 0.5),
          borderRadius: borderRadius,
        ),
        alignment: isSwitched ? Alignment.centerLeft : Alignment.centerRight,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          width: circleSize,
          height: circleSize,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow:
            [
              BoxShadow(
                color: Color.fromARGB(15, 16, 24, 40),
                offset: Offset(0, 1),
                blurRadius: 2,
              ),
              BoxShadow(
                color: Color.fromARGB(26, 16, 24, 40),
                offset: Offset(0, 1),
                blurRadius: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
