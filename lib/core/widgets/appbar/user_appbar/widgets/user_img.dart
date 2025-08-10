import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../features/10_profile/presentation/controller/user_img/user_img_controller.dart';
import '../../../../constants/app_borders.dart';
import '../../../../constants/app_images.dart';
import '../../../../widgets/circular_indicator.dart';

class UserImgWidget extends ConsumerWidget
{
  const UserImgWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final userImageAsync = ref.watch(userImageProvider);
    return ClipRRect(
      borderRadius: AppRadiuses.circular.xLarge,
      child: userImageAsync.when(
        data: (url)
        {
          if (url != null && url.isNotEmpty)
          {
            return CachedNetworkImage(
              imageUrl: url,
              fit: BoxFit.cover,
              placeholder: (context, _) => const CustomCircularIndicator(),
              errorWidget: (context, _, _) => Image.asset(AppAssets.imgs.user, fit: BoxFit.contain),
              height: 44.h, width: 44.w,
            );
          }
          else
          {
            return Image.asset(AppAssets.imgs.user, fit: BoxFit.contain);
          }
        },
        loading: () => const CustomCircularIndicator(),
        error: (_, _) => Image.asset(AppAssets.imgs.user, fit: BoxFit.contain),
      ),
    );
  }
}
