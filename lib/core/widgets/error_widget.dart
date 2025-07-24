import 'package:flutter/material.dart';

import '../../config/i18n/generated/l10n.dart';
import '../constants/app_styles.dart';

class CustomErrorWidget extends StatelessWidget
{
  const CustomErrorWidget({super.key, required this.error});

  final dynamic error;

  @override
  Widget build(BuildContext context)
  {
    return Center(child: Text('${S.current.error}: $error', style: AppStyles.black(),));
  }
}