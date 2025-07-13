import 'package:flutter/material.dart';

import '../../../../../core/constants/app_styles.dart';

class FilterProductsByWidget extends StatelessWidget
{
  const FilterProductsByWidget({super.key, required this.title,});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: AppStyles.extraBold(),);
  }
}