import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/column.dart';
import '../widget/add_to_cart_button.dart';
import '../widget/fruit_description.dart';
import '../widget/fruit_health_info1.dart';
import '../widget/fruit_health_info2.dart';
import '../widget/fruit_item_widget.dart';
import '../widget/fruit_quantity.dart';
import '../widget/fruit_rating.dart';

class ItemDetails extends StatelessWidget
{
  const ItemDetails({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: CustomColumn(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          const FruitItemWidget(),
          Sizes.s24.verticalSpace,
          const FruitNeededQuantity(),
          Sizes.s8.verticalSpace,
          const FruitItemRating(),
          Sizes.s8.verticalSpace,
          const FruitItemDescription(),
          Sizes.s16.verticalSpace,
          const FruitHealthInfo1(),
          Sizes.s16.verticalSpace,
          const FruitHealthInfo2(),
          Sizes.s24.verticalSpace,
          const AddToCartButton(),
          Sizes.s16.verticalSpace,
        ]
      ),
    );
  }
}