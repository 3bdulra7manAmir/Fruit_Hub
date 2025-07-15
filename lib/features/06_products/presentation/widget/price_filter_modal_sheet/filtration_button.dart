
import 'dart:developer';
import 'package:e_commerce_app/config/router/app_router.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/buttons/button.dart';
import '../sort_modal_sheet/sort_body.dart';

class PriceFiltrationButtonWidget extends StatelessWidget
{
  const PriceFiltrationButtonWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomButton(
      text: "تصفيه",
      onPressed: ()
      {
        log("Filter...");
        AppRouter.router.pop();
        arrangementFilterSheet(context);
      },
    );
  }
}