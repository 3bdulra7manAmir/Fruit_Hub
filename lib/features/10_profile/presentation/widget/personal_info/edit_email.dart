import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/widgets/textform_field.dart';

class EditEmailFieldWidget extends StatelessWidget
{
  const EditEmailFieldWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      hintText: 'mail@mail.com',
      suffixIcon: SvgPicture.asset('assets/icons/Personal_Info/Edit_Grey.svg', fit: BoxFit.scaleDown,),
    );
  }
}