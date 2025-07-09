import 'package:flutter/material.dart';

import '../../../../core/widgets/app_appbar.dart';


class Search extends StatelessWidget
{
  const Search ({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(barTitle: "البحث",),
      body: Column(
        children:
        [
          
        ],
      ),
    );
  }
}