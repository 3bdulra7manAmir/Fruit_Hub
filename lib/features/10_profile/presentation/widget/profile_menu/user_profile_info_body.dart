import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_sizes.dart';
import '../../controller/profile_menu/user_image_picker.dart';
import 'user_profile_img.dart';
import 'user_profile_info.dart';

class UserProfileInfoBody extends StatelessWidget
{
  const UserProfileInfoBody({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Consumer(
          builder: (_, ref, _)
          {
            return GestureDetector(
              onTap: () async
              {
                log('User Img Picker...');
                // ignore: unused_local_variable
                final pickedImage = await ref.read(pickUserImageProvider.future,);
              },
              child: const UserProfileImg(),
            );
          },
        ),
        Sizes.s24.horizontalSpace,
        const UserProfileInfo(),
      ],
    );
  }
}
