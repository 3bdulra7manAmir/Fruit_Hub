// ignore_for_file: unused_import
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_margins.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/app_appbar.dart';
import '../../../../core/widgets/custom_column.dart';
import '../../../03_home/presentation/widget/home/search_bar/search_bar_body.dart';
import '../../../03_home/presentation/widget/home/user_appbar/notifications_bill.dart';
import '../widget/if_no_results_body.dart';
import '../widget/if_previous_results_body.dart';
import '../widget/if_results_body.dart';


class Search extends StatelessWidget
{
  const Search({super.key, required this.fruitName,});
  final String fruitName;
  
  @override
  Widget build(BuildContext context)
  {
    //log("Received fruitName: $fruitName"); // Just for debug
    return Scaffold(
      appBar: CustomAppBar(
        barTitle: "البحث",
        barActions:
        [
          GestureDetector(
            onTap: () {log("Notifications Bill has been Pressed...");},
            child: BillWidget())
        ],
        barActionsPadding: AppMargins.directional.smallEnd,
      ),
      body: SingleChildScrollView(
        child: CustomColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Sizes.size16.verticalSpace,
            SearchBarWidget(
              controller: TextEditingController(text: fruitName),
              onSubmitted: (value)
              {log("Search Field Value is => $value");},
            ),
        
            //fResultsBody(),
            //IfPreviousResultsBody(),
            //IfNoResultsBody(),
          ],
        ),
      ),
    );
  }
}