import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/listview_builder.dart';
import 'comments_widget.dart';

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
          separatorBuilder: (context, index) => const CommentWidget(),
          itemBuilder: (context, index) => Sizes.s8.verticalSpace, 
          itemCount: 5,
        )
      ],
    );
  }
}
