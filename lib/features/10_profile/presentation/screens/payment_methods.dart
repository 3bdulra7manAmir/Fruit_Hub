import 'package:e_commerce_app/core/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethods extends StatelessWidget
{
  const PaymentMethods({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(
        barTitle: "المدفوعات", isCustomBack: true,
        barLeading: SvgPicture.asset("/assets/icons/"),
      ),
    );
  }
}