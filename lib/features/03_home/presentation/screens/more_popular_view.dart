import 'package:flutter/material.dart';

import '../../../../core/widgets/app_appbar.dart';
import '../../../../core/widgets/custom_column.dart';


class MorePopular extends StatelessWidget
{
  const MorePopular ({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(barTitle: "الأكثر مبيعًا",),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: CustomColumn(
          children:
          [
            
          ],
        ),
      ),
    );
  }
}