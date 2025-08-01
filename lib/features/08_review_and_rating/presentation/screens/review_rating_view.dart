import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar/default_appbar/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../widget/comment_field.dart';
import '../widget/comments/comments_list.dart';
import '../widget/rating/rating_body.dart';
import '../widget/reviews_count.dart';
import '../widget/summary_text.dart';

class ReviewAndRating extends StatelessWidget
{
  const ReviewAndRating({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(title: S.current.review,),
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
          Sizes.s16.verticalSpace,
        ]
      ),
    );
  }
}
























