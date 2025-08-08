import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
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
      hintText: FirebaseAuth.instance.currentUser!.email ?? '',
      validator: (value) => AppValidation.emailValidation(value),
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      suffixIcon: NameEditWidget(onTap: () {log('Edit Name...');},),
    );
  }
}