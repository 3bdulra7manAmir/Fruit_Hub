import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../identity_widgets/widgets.dart';

class BackButtonWidget extends StatelessWidget
  {
    const BackButtonWidget({super.key});
  
    @override
    Widget build(BuildContext context)
    {
      return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.color.kWhite001,
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.color.kGrey014,),
        ),
        child: SvgPicture.asset(WidgetFilpper.appBarBack(context)),
      );
    }
  }


