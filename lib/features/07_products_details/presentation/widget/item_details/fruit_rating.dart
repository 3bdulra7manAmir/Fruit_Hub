import 'dart:developer';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/extensions/numbers_and_dates.dart';
import '../../../../../core/widgets/error_widget.dart';
import '../../../data/model/rating_and_description_model.dart';
import '../../../domain/usecases/fetch_rating_and_description_usecase.dart';


class FruitItemRatingWidget extends StatelessWidget
{
  const FruitItemRatingWidget({super.key, required this.id,});

  final String id;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        SvgPicture.asset(AppAssets.icons.itemDetailsStar),
        Sizes.s9.horizontalSpace,
        RatingAmountTextWidget(fruitId: id,),
        Sizes.s9.horizontalSpace,
        RatingsCountTextWidget(fruitId: id,),
        Sizes.s9.horizontalSpace,
        GestureDetector(
          onTap: ()
          {log('Review has been Pressed...'); AppRouter.router.pushNamed(AppRoutes.rate);},
          child: const RatingReviewsTextWidget()
        ),
      ],
    );
  }
}


class RatingAmountTextWidget extends ConsumerWidget
{

  const RatingAmountTextWidget({super.key, required this.fruitId});
  final String fruitId;
  
  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final ratingsAsync = ref.watch(fetchRatingAndDescriptionUsecaseProvider);
    return ratingsAsync.when(
      data: (ratings)
      {
        final rating = ratings.firstWhere(
          (r) => r.ratingId == fruitId,
          orElse: () => const RatingAndDescriptionModel(
            ratingId: '',  ratingDescription: '', usersCount: '', value: 0,
          ),
        );
        final rateValue = rating.value;
        return Text(rateValue.toString().localizedNumbers(ref)!, style: AppStyles.extraLight(fontColor: AppColors.color.kBlack002),);
      },
      loading: () => const SizedBox.shrink(),
      error: (error, stack) => CustomErrorWidget(error: error),
    );
  }
}



class RatingsCountTextWidget extends ConsumerWidget
{

  const RatingsCountTextWidget({super.key, required this.fruitId});
  final String fruitId;

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final ratingsAsync = ref.watch(fetchRatingAndDescriptionUsecaseProvider);
    return ratingsAsync.when(
      data: (ratings)
      {
        final rating = ratings.firstWhere(
          (r) => r.ratingId == fruitId,
          orElse: () => const RatingAndDescriptionModel(
            ratingId: '',  ratingDescription: '', usersCount: '', value: 0,
          ),
        );

        final usersCount = rating.usersCount;
        return Text('(${usersCount.toString().localizedNumbers(ref)}+)',
          style: AppStyles.extraLight(fontColor: AppColors.color.kGrey012, fontWeight: AppFontWeights.regularWeight,),
        );
      },
      loading: () => const SizedBox.shrink(),
      error: (error, stack) => CustomErrorWidget(error: error),
    );
  }
}



class RatingReviewsTextWidget extends StatelessWidget
{
  const RatingReviewsTextWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Text(S.current.review, style: AppStyles.extraLight(
      fontColor: AppColors.color.kGreen001, 
      fontWeight: AppFontWeights.boldWeight,
        textDecoration: TextDecoration.underline,
        textDecorationColor: AppColors.color.kGreen001,
      ),
    );
  }
}