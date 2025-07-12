import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCircularIndicator extends StatelessWidget
{
  const CustomCircularIndicator({super.key});

  @override
  Widget build(BuildContext context)
  {
    return  Center(
      child: SizedBox(
        width: 32.w, height: 32.h,
        child: CircularProgressIndicator(strokeWidth: 2.w),
      ),
    );
  }
}
