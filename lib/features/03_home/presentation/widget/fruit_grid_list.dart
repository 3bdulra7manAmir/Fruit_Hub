import 'package:flutter/material.dart';

import '../../../../core/widgets/grid_view_builder.dart';
import 'fruit_grid_card.dart';

class FruitGridListWidget extends StatelessWidget
{
  const FruitGridListWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomGridbuilder(
      itemCount: 7,
      itemBuilder: (context, index) => FruitGridCardWidget(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12.0,
        crossAxisSpacing: 12.0,
        childAspectRatio: 0.8,
      ),
    );
  }
}