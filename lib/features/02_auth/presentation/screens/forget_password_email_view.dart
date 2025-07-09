import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_column.dart';

class ForgetPasswordEmail extends StatelessWidget
{
  ForgetPasswordEmail({super.key});

  final GlobalKey<FormState> forgetPasswordEmailFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      //appBar: CustomAppBar(barTitle: "نسيان كلمة المرور"),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: CustomColumn(
          children:
          [
        
          ],
        ),
      ),
    );
  }
}