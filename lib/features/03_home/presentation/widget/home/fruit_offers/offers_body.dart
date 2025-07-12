
import 'package:flutter/material.dart';

import 'fruit_image.dart';
import 'offer_text.dart';

class OffersBody extends StatelessWidget
{
  const OffersBody({super.key});

  @override
  Widget build(BuildContext context)
  {
    return const Card(
      child: Stack(
        children: [OfferImgWidget(), OfferTextWidget(),]
      ),
    );
  }
}
