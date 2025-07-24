import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/widgets/textform_field.dart';

class EditFullNameFieldWidget extends StatelessWidget
{
  const EditFullNameFieldWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      hintText: 'أحمد ياسر',
      suffixIcon: SvgPicture.asset('assets/icons/Personal_Info/Edit_Grey.svg', fit: BoxFit.scaleDown,),
      
    );
  }
}