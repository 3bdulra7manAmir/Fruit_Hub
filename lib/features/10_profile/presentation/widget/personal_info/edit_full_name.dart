import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constants/app_images.dart';
import '../../../../../core/services/validation/validation.dart';
import '../../../../../core/utils/ui/input_formatters.dart';
import '../../../../../core/widgets/textform_field.dart';

class EditFullNameFieldWidget extends StatelessWidget
{
  const EditFullNameFieldWidget({super.key, required this.fullNameController,});

  final TextEditingController fullNameController;

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      hintText: FirebaseAuth.instance.currentUser!.displayName ?? 'NuLL or User added before name adding',
      controller: fullNameController,
      keyboardType: TextInputType.name,
      suffixIcon: NameEditWidget(onTap: () {log('Edit Name...');},),
      validator: (value) => AppValidation.fullNameValidation(value),
      inputFormatters: AppInputFormatters.lettersOnly,
    );
  }
}


class NameEditWidget extends StatelessWidget
{
  const NameEditWidget({super.key, this.onTap,});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(AppAssets.icons.editGreyV2, fit: BoxFit.scaleDown,)
    );
  }
}