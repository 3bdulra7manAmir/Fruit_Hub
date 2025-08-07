import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/widgets/divider.dart';
import '../../../../10_profile/presentation/controller/orders_histroy/current_order_expanded_controller.dart';
import '../../../../10_profile/presentation/widget/order_icon.dart';
import '../../../../10_profile/presentation/widget/orders_history/order_date_text.dart';
import '../../../../10_profile/presentation/widget/orders_history/order_tracking_steps.dart';
import '../../../../10_profile/presentation/widget/orders_history/orders_count_and_price_text.dart';
import '../common_container.dart';
import '../payment_success/order_number_text.dart';


class CurrentOrderWidget extends ConsumerWidget
{
  const CurrentOrderWidget({super.key, required this.isDownArrow});
  final bool isDownArrow;

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final isExpanded = ref.watch(currentOrderExpandedProvider);
    final expandedController = ref.read(currentOrderExpandedProvider.notifier);

    return CommonContainerWidget(
      padding: AppPadding.directional.orderCard,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              const OrderIconWidget(),
              Sizes.s16.horizontalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  const OrderNumberTextWidget(),
                  Sizes.s3.verticalSpace,
                  const OrderDateTextWidget(),
                  Sizes.s6.verticalSpace,
                  const OrdersCountTextWidget(),
                ],
              ),
              if(isDownArrow)...
              [
                Sizes.s56.horizontalSpace,
                GestureDetector(
                  onTap: expandedController.toggle,
                  child: AnimatedRotation(
                    turns: isExpanded ? 0.5 : 0,
                    duration: const Duration(milliseconds: 200),
                    child: SvgPicture.asset(AppAssets.icons.downArrowBlack),
                  ),
                ),
              ]
              else...[const SizedBox.shrink()],
            ],
          ),
          if (isExpanded)...
          [
            Sizes.s20.verticalSpace,
            CustomDivider(color: AppColors.color.kGrey021),
            Sizes.s3.verticalSpace,
            const OrderTrackingStepsWidget(),
          ]
        ],
      ),
    );
  }
}

