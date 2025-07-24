import 'dart:developer';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/textform_field.dart';
import 'edit_full_name.dart';

class EditEmailFieldWidget extends StatelessWidget
{
  const EditEmailFieldWidget({super.key,});

  static final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      hintText: 'mail@mail.com',
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      suffixIcon: NameEditWidget(onTap: () {log('Edit Name...');},),
    );
  }
}