import 'package:flutter/material.dart';

import '../../../../core/constants/app_images.dart';

class NotificationsImgWidget extends StatelessWidget
{
  const NotificationsImgWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Image.asset(AppAssets.icons.notificationsImg,);
  }
}