import 'package:flutter/widgets.dart';

import '../fruit_quantity.dart';
import 'cart_fruit_info.dart';

class FruitNeededQuantityWidget extends StatelessWidget
{
  const FruitNeededQuantityWidget({super.key, required this.itemName, required this.itemPrice});

  final String itemName;
  final String itemPrice;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:
      [
        FruitQuantityPriceWidget(itemName: itemName, itemPrice: itemPrice,),
        const FruitQuantityChanger()
      ],
    );
  }
}

