import 'package:flutter/material.dart';

import '../../../../core/widgets/column.dart';

class PasswordRecoveryPhone extends StatelessWidget
{
  PasswordRecoveryPhone({super.key});

  final GlobalKey<FormState> passwordRecoveryPhoneFormKey = GlobalKey<FormState>();

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