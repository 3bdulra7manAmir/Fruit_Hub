
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_styles.dart';


class RecoveryOtpFieldWidget extends StatelessWidget
{
  final int otpLength;
  final void Function(String)? onCompleted;

  const RecoveryOtpFieldWidget({
    super.key,
    this.otpLength = 4,
    this.onCompleted,
  });

  @override
  Widget build(BuildContext context)
  {
    final controllers = List.generate(otpLength, (_) => TextEditingController());
    final focusNodes = List.generate(otpLength, (_) => FocusNode());

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(otpLength, (index)
      {
        return Container(
          width: 74.w,
          decoration: BoxDecoration(
            color: AppColors.color.kGrey004,
            borderRadius: AppRadiuses.circular.xXXSmall,
            border: Border.all(color: AppColors.color.kGrey003)
          ),
          margin: EdgeInsets.symmetric(horizontal: 6),
          child: TextFormField(
            controller: controllers[index],
            focusNode: focusNodes[index],
            textAlign: TextAlign.center,
            maxLength: 1,
            keyboardType: TextInputType.number,
            style: AppStyles.extraBlack(fontWeight: AppFontWeights.boldWeight),
            decoration: InputDecoration(
              counterText: '',
              enabledBorder: OutlineInputBorder(
                borderRadius: AppRadiuses.circular.xXXSmall,
                borderSide:  BorderSide(color: AppColors.color.kGrey003),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: AppRadiuses.circular.xXXSmall,
                borderSide: BorderSide(color: AppColors.color.kGrey003),
              ),
            ),
            onChanged: (value)
            {
              if (value.isNotEmpty)
              {
                if (index < otpLength - 1)
                {
                  FocusScope.of(context).requestFocus(focusNodes[index + 1]);
                }
                else
                {
                  final otp = controllers.map((c) => c.text).join();
                  onCompleted?.call(otp);
                  FocusScope.of(context).unfocus();
                }
              }
            },
          ),
        );
      }),
    );
  }
}
