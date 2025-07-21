import 'package:e_commerce_app/core/widgets/appbar.dart';
import 'package:e_commerce_app/core/widgets/column.dart';
import 'package:flutter/material.dart';

class PersonalInfo extends StatelessWidget
{
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(barTitle: "الملف الشخصي",),
      body: CustomSingleChild(
        children:
        [
          
        ]
      ),
    );
  }
}