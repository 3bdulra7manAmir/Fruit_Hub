import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../controllers/mark_as_read_controller.dart';
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
            return GestureDetector(
              onTap: () {
                log('Remove All Green Color Or Remove From List did not decide Know Yet...',);
                ref.read(markAsReadProvider.notifier).toggle();
              },
              child: const MarkAllAsReadWidget(),
            );
          },
        ),
      ],
    );
  }
}

