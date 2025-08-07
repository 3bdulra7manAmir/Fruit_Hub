import 'dart:developer';
import 'package:flutter/material.dart';

import '../../../../../core/services/validation/validation.dart';
import '../../../../../core/widgets/textform_field.dart';
import 'edit_full_name.dart';

class EditEmailFieldWidget extends StatelessWidget
{
  const EditEmailFieldWidget({super.key, required this.emailController,});

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      hintText: 'mail@mail.com',
      validator: (value) => AppValidation.emailValidation(value),
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      suffixIcon: NameEditWidget(onTap: () {log('Edit Name...');},),
    );
  }
}