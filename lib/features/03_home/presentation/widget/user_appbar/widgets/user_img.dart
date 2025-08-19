import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constants/app_borders.dart';
import '../../../../../../core/constants/app_images.dart';
import '../../../../../../core/widgets/cached_network_img.dart';
import '../../../../../../core/widgets/circular_indicator.dart';
import '../../../../../10_profile/presentation/controller/user_img/user_img_controller.dart';

class UserImgWidget extends ConsumerWidget
{
  const UserImgWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final userImageAsync = ref.watch(userImageFetchProvider);
    return ClipRRect(
      borderRadius: AppRadiuses.circular.xLarge,
      child: userImageAsync.when(
        data: (url)
        {
          if (url != null && url.isNotEmpty)
          {
            return CustomCachedNetworkImg(
              imgUrl: url,
              fit: BoxFit.cover,
              placeholder: (_, _) => const CustomLoadingIndicator(),
              errorWidget: (_, _, _) => Image.asset(AppAssets.imgs.user, fit: BoxFit.contain),
              height: 44.h, width: 44.w,
            );
          }
          else
          {
            return Image.asset(AppAssets.imgs.user, fit: BoxFit.contain);
          }
        },
        loading: () => const CustomLoadingIndicator(),
        error: (_, _) => Image.asset(AppAssets.imgs.user, fit: BoxFit.contain),
      ),
    );
  }
}
