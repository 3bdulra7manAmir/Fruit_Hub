import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controllers/mark_as_read_controller.dart';
import 'card.dart';
import 'card_green_dot.dart';


class NotificationsCardBody extends ConsumerWidget
{
  const NotificationsCardBody({super.key, });
  
  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final markAsRead = ref.watch(markAsReadProvider);
    return Stack(
      clipBehavior: Clip.none,
      children:
      [
        NotificationsCardWidget(isGreenBackground: markAsRead,),
        NotificationGreenDotWidget(isGreenDot: markAsRead,),
      ]
    );
  }
}


