import 'package:flutter/material.dart';

import 'card.dart';
import 'card_green_dot.dart';


class NotificationsCardBody extends StatelessWidget
{
  const NotificationsCardBody({super.key, });
  
  @override
  Widget build(BuildContext context)
  {
    return Stack(
      clipBehavior: Clip.none,
      children:
      [
        NotificationsCardWidget(isGreenBackground: true,),
        NotificationGreenDotWidget(isGreenDot: true,),
      ]
    );
  }
}


