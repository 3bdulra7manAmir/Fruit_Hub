import 'package:flutter/material.dart';

import '../../../../../core/constants/app_styles.dart';

class FilterProductsByWidget extends StatelessWidget
{
  const FilterProductsByWidget({super.key,});

  @override
  Widget build(BuildContext context) {
    return Text("تصنيف حسب :", style: AppStyles.extraBold(),);
  }
}