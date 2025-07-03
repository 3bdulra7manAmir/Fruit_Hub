import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce_app/features/01_onboarding/presentation/widget/onboard_search_and_shop/start_now_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/constants/app_sizes.dart';
import '../controller/dot_indicator_controller.dart';
import '../widget/onboard_welcome_body.dart';
import '../widget/onboard_search_and_shop_body.dart';

class DotIndicator extends ConsumerWidget
{
  const DotIndicator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final currentPage = ref.watch(dotIndicatorProvider);
    return Scaffold(
      body: Column(
        children:
        [
          Expanded(
            child: PageView(
              onPageChanged: (index) => ref.read(dotIndicatorProvider.notifier).set(index),
              children: const [ OnboardingWelcome(), SearchAndShop(), ],
            ),
          ),
          Indicator(currentPage: currentPage),
          Sizes.size29.verticalSpace,
          if (currentPage == 1)
            const StartNowButtonWidget(),
          Sizes.size43.verticalSpace,
        ],
      ),
    );
  }
}


class Indicator extends StatelessWidget
{
  const Indicator({super.key, required this.currentPage,});

  final int currentPage;
  @override
  Widget build(BuildContext context)
  {
    return DotsIndicator(
      dotsCount: 2, 
      position: currentPage.toDouble(), 
      animate: true,
      decorator: DotsDecorator(
        activeColor: AppColors.color.kGreen001,
        color: AppColors.color.kGreen003, 
        spacing: AppPadding.symmetric.xXXSmall,
      ),
    );
  }
}