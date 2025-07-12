import 'package:flutter/material.dart';

import '../../../../core/widgets/column.dart';

class ForgetPasswordEmail extends StatelessWidget
{
  ForgetPasswordEmail({super.key});

  final GlobalKey<FormState> forgetPasswordEmailFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context)
  {
    return const Scaffold(
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