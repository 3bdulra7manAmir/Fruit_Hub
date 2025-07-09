import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/custom_grid_view_builder.dart';
import 'fruit_grid_card/fruit_card_body.dart';

class FruitGridListWidget extends StatelessWidget
{
  const FruitGridListWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomGridbuilder(
      itemCount: 9,
      itemBuilder: (context, index) => FruitGridCardWidget(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,             //  controls how many items per row
        mainAxisSpacing: (8.0).h,      // vertical spacing
        crossAxisSpacing: (16.0).w,    // horizontal spacing
        childAspectRatio: (163.w / 214.h), // ≈ 0.7617
      ),
    );
  }
}