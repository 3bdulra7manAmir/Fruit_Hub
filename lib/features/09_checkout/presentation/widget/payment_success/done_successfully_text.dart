import 'package:flutter/material.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_styles.dart';

class DoneSuccessfullyTextWidget extends StatelessWidget
{
  const DoneSuccessfullyTextWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Text(S.current.success2, style: AppStyles.bold(fontColor: AppColors.color.kBlack001,),);
  }
}