import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_sizes.dart';
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
        const UserProfileImg(), 
        Sizes.s24.horizontalSpace, 
        const UserProfileInfo(),
      ],
    );
  }
}