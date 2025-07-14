import 'package:e_commerce_app/core/widgets/appbar.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget
{
  const Cart({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(barTitle: "barTitle"),
    );
  }
}