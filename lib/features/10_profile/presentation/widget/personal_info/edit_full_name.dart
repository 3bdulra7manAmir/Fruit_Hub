import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/services/validation/app_validation.dart';
import '../../../../../core/utils/input_formatters.dart';
import '../../../../../core/widgets/textform_field.dart';

class EditFullNameFieldWidget extends StatelessWidget
{
  const EditFullNameFieldWidget({super.key,});

  static final TextEditingController fullNameController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      hintText: 'أحمد ياسر',
      controller: fullNameController,
      keyboardType: TextInputType.name,
      suffixIcon: NameEditWidget(onTap: () {log('Edit Name...');},),
      validator: (value) => AppValidation.fullNameValidation(value, context),
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
      child: SvgPicture.asset('assets/icons/Personal_Info/Edit_Grey.svg', fit: BoxFit.scaleDown,)
    );
  }
}