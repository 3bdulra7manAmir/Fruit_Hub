import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/widgets/cached_network_img.dart';
import '../../../../../core/widgets/circular_indicator.dart';
import '../../controller/user_img/user_img_controller.dart';

class UserProfileImg extends ConsumerWidget {
  const UserProfileImg({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final imgState = ref.watch(userImageFetchProvider);
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        imgState.when(
          data: (url) => ClipRRect(
            borderRadius: AppRadiuses.circular.xLarge,
            child: CustomCachedNetworkImg(
              imgUrl: url!,
              placeholder: (_, _) => const CustomLoadingIndicator(),
              errorWidget: (_, _, _) => const Icon(Icons.error),
              width: 73.w,
              height: 73.h,
            ),
          ),
          loading: () => const CustomLoadingIndicator(),
          error: (_, _) => const Icon(Icons.error),
        ),
        Positioned(
          bottom: -11.h,
          child: Container(
            padding: AppPadding.all.userCamera,
            decoration: BoxDecoration(
              color: AppColors.color.kGrey022,
              borderRadius: AppRadiuses.circular.large,
              border: Border.all(
                color: AppColors.color.kWhite001,
                width: Sizes.s2.w,
              ),
            ),
            child: SvgPicture.asset(
              AppAssets.icons.cameraGreen,
              width: 16.w,
              height: 16.h,
              colorFilter: ColorFilter.mode(AppColors.color.kBlack001, BlendMode.srcIn),
            ),
          ),
        ),
      ],
    );
  }
}
