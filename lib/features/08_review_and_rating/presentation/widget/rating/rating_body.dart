import 'package:flutter/material.dart';

import 'rating_average_value.dart';
import 'rating_bars_list.dart';

class RatingWidget extends StatelessWidget
{
  const RatingWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return const Row(
      children:
      [
        Expanded(
          child: RatingAverageValueWidget()
        ),
        Expanded(
          flex: 3,
          child: RatingBarsListWidget()
        ),
      ],
    );
  }
}

