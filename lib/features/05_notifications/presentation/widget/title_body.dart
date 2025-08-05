import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import 'title_all_read.dart';
import 'title_count.dart';
import 'title_header.dart';

class NotificationsTitleWidget extends StatelessWidget
{
  const NotificationsTitleWidget({
    super.key,
    required this.header,
    required this.count,
  });
  final String header;
  final String count;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        HeaderWidget(header: header),
        Sizes.s6.horizontalSpace,
        CountWidget(count: count),
        const Spacer(),
        Consumer(
          builder: (_, ref, _)
          {
            //final markAsRead = ref.watch(provider);
            return GestureDetector(
              onTap: ()
              {
                {
                  log('Remove All Green Color Or Remove From List did not decide Know Yet...',);
                  
                }
              },
              child: const MarkAllAsReadWidget(),
            );
          },
        ),
      ],
    );
  }
}
