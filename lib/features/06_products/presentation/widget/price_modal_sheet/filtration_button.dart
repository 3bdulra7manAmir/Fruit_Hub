
import 'dart:developer';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/buttons/button.dart';

class FiltrationButtonWidget extends StatelessWidget
{
  const FiltrationButtonWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomButton(
      text: "تصفيه",
      onPressed: ()
      {
        log("Filter...");
      },
    );
  }
}