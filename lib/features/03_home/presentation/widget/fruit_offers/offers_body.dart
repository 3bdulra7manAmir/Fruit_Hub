
import 'package:flutter/material.dart';

import '../../../domain/entity/offer_entity.dart';
import 'fruit_img.dart';
import 'offer_text.dart';

class OffersBody extends StatelessWidget
{
  const OffersBody({super.key, required this.offer});
  final OffersEntity offer;

  @override
  Widget build(BuildContext context)
  {
    return Card(
      child: Stack(
        children:
        [
          OfferImgWidget(imgUrl: offer.imgUrl,),
          OfferTextWidget(discountValue: offer.value, offerTitle: offer.name,),
        ]
      ),
    );
  }
}
