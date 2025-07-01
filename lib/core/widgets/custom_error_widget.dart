import 'package:flutter/material.dart';

import '../../config/localization/app_localizations.dart';
import '../constants/app_styles.dart';

class CustomErrorWidget extends StatelessWidget
{
  const CustomErrorWidget({super.key, required this.e});

  final dynamic e;

  @override
  Widget build(BuildContext context)
  {
    return Center(child: Text('${S.of(context)!.error}: $e', style: AppStyles.extraBlack(),));
  }
}