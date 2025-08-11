import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/widgets/listview_builder.dart';
import 'comment_body.dart';

class CommentsListWidget extends StatelessWidget
{
  const CommentsListWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children:
      [
        CustomListviewBuilder(
          separatorBuilder: (_, _) => const CommentBody(),
          itemBuilder: (_, _) => Sizes.s16.verticalSpace, 
          itemCount: 5,
        )
      ],
    );
  }
}
