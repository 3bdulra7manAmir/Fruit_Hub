import 'package:flutter/material.dart';

import '../../../../core/widgets/appbar.dart';
import '../../../../core/widgets/column.dart';

class FilteredProducts extends StatelessWidget
{
  const FilteredProducts({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(barTitle: "المنتجات", isNotifications: true, isCustomBack: false,),
      body: CustomColumn(
        children:
        [

        ]
      ),
    );
  }
}