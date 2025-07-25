
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_styles.dart';


class RecoveryOtpFieldWidget extends StatefulWidget
{

  const RecoveryOtpFieldWidget({
    super.key,
    this.otpLength = 4,
    this.onCompleted,
  });
  final int otpLength;
  final void Function(String)? onCompleted;

  @override
  State<RecoveryOtpFieldWidget> createState() => _RecoveryOtpFieldWidgetState();
}

class _RecoveryOtpFieldWidgetState extends State<RecoveryOtpFieldWidget>
{
  late List<TextEditingController> controllers;
  late List<FocusNode> focusNodes;

  @override
  void initState()
  {
    super.initState();
    controllers = List.generate(widget.otpLength, (_) => TextEditingController());
    focusNodes = List.generate(widget.otpLength, (_) => FocusNode());
  }

  @override
  void dispose()
  {
    for (final c in controllers)
    {
      c.dispose();
    }
    for (final f in focusNodes)
    {
      f.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context)
  {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(widget.otpLength, (index)
        {
          
          return Container(
            width: 74.w,
            margin: const EdgeInsets.symmetric(horizontal: 6),
            decoration: BoxDecoration(
              color: AppColors.color.kGrey004,
              borderRadius: AppRadiuses.circular.xXXXXSmall,
              border: Border.all(color: AppColors.color.kGrey003),
            ),
            child: TextFormField(
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              controller: controllers[index],
              focusNode: focusNodes[index],
              textAlign: TextAlign.center,
              maxLength: 1,
              keyboardType: TextInputType.number,
              style: AppStyles.black(fontWeight: AppFontWeights.boldWeight),
              decoration: InputDecoration(
                counterText: '',
                enabledBorder: outlineInputBorder,
                focusedBorder: outlineInputBorder,
                errorBorder: outlineInputBorder,
                disabledBorder: outlineInputBorder,
                focusedErrorBorder: outlineInputBorder,
                border: outlineInputBorder,
              ),
              onChanged: (value)
              {
                if (value.isNotEmpty)
                {
                  if (index < widget.otpLength - 1)
                  {
                    FocusScope.of(context).requestFocus(focusNodes[index + 1]);
                  }
                  else
                  {
                    final otp = controllers.map((c) => c.text).join();
                    widget.onCompleted?.call(otp);
                    FocusScope.of(context).unfocus();
                  }
                }
              },
              onFieldSubmitted: (value) => log(value),
            ),
          );
        }),
      ),
    );
  }
}


final outlineInputBorder = OutlineInputBorder(
  borderRadius: AppRadiuses.circular.xXXXXSmall,
  borderSide: BorderSide(color: AppColors.color.kGrey003),
);