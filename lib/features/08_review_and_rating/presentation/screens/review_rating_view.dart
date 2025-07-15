import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../widget/comment_field.dart';
import '../widget/comments_list.dart';
import '../widget/rating_widget.dart';
import '../widget/reviews_count.dart';
import '../widget/summary_text.dart';

class ReviewAndRating extends StatelessWidget
{
  const ReviewAndRating({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: const CustomAppBar(barTitle: "المراجعه",),
      body: CustomSingleChild(
        children:
        [
          Sizes.s16.verticalSpace,
          const CommentFieldWidget(),
          Sizes.s16.verticalSpace,
          const ReviewsCountTextWidget(),
          Sizes.s6.verticalSpace,
          const SummaryTextWidget(),
          Sizes.s8.verticalSpace,
          const RatingWidget(),
          Sizes.s16.verticalSpace,
          const CommentsListWidget(),
        ]
      ),
    );
  }
}
























