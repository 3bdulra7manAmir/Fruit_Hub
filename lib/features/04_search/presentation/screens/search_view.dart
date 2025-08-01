// ignore_for_file: unused_import
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../core/constants/app_margins.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar/default_appbar/appbar.dart';
import '../../../../core/widgets/appbar/user_appbar/widgets/notifications_bill.dart';
import '../../../../core/widgets/column.dart';
import '../../../03_home/presentation/widget/search_bar/search_bar_body.dart';
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
      appBar:  CustomAppBar(title: S.current.search2, isNotifications: true,),
      body: CustomSingleChild(
        children:
        [
          Sizes.s16.verticalSpace,
          SearchBarWidget(
            controller: TextEditingController(text: fruitName),
            onSubmitted: (value) {log('Search Field Value is => $value');},
          ),
          //IfNoResultsBody(),
          //IfResultsBody(),
          //IfPreviousResultsBody(),
        ],
      ),
    );
  }
}