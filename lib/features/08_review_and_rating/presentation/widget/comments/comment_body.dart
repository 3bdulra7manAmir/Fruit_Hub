import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_sizes.dart';
import 'comment_name_date.dart';
import 'comment_user_img.dart';
import 'user_comment.dart';

class CommentBody extends StatelessWidget
{
  const CommentBody({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: 
          [
            const CommentInfoWidget(),
            Sizes.s15.horizontalSpace,
            const RatingUserImgBody(),
          ],
        ),
        Sizes.s18.verticalSpace,
        const UserCommentTextWidget(),
      ],
    );
  }
}








