import 'package:flutter/material.dart';

import '../../config/i18n/generated/l10n.dart';
import '../constants/app_styles.dart';
import '../utils/logger/app_logger.dart';

class CustomErrorWidget extends StatelessWidget
{
  const CustomErrorWidget({super.key, required this.error});

  final dynamic error;

  @override
  Widget build(BuildContext context)
  {
    AppLogger.error('Custom Error Widget => ', error: error,);
    return Center(child: Text('${S.current.error}: $error', 
      style: AppStyles.extraLight(), maxLines: 6,)
    );
  }
}