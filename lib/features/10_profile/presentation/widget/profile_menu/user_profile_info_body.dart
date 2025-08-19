import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/services/database/firebase/firebase_operations/user_img/controller/user_img_controller.dart';
import '../../../../../core/utils/logger/app_logger.dart';
import '../../controller/user_img_picker/user_img_picker.dart';
import 'user_profile_img.dart';
import 'user_profile_info.dart';

class UserProfileInfoBody extends ConsumerWidget
{
  const UserProfileInfoBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return Row(
      children:
      [
        GestureDetector(
          onTap: () async
          {
            AppLogger.debug('User Img Picker...');
            final pickedImage = await ref.read(userImgPickerProvider.future);
            if (pickedImage != null)
            {
              await ref.read(userImgUploadProvider(File(pickedImage.path)).future);
            }
            else
            {
              AppLogger.debug('No image selected.');
            }
          },
          child: const UserProfileImg(),
        ),
        Sizes.s24.horizontalSpace,
        const UserProfileInfo(),
      ],
    );
  }
}
