
import 'dart:developer';
import 'package:e_commerce_app/config/router/router.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/buttons/button.dart';

class AlpahpetFiltrationButtonWidget extends StatelessWidget
{
  const AlpahpetFiltrationButtonWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomButton(
      text: "تصفيه",
      onPressed: ()
      {
        log("Filter...");
        AppRouter.router.pop();
        
      },
    );
  }
}