// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../config/router/app_router.dart';
import '../../../../config/router/app_routes.dart';
import '../../../../config/router/route_observer.dart';
import '../../../../config/router/routes_extras.dart';
import '../../../../core/constants/app_margins.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../../../core/widgets/appbar/default_appbar/appbar.dart';
import '../../../../core/widgets/appbar/notifications_bill.dart';
import '../../../../core/widgets/column.dart';
import '../../../../core/widgets/snackbar.dart';
import '../../../03_home/presentation/widget/search_bar/search_bar_body.dart';
import '../widget/if_no_results_body.dart';
import '../widget/if_previous_results_body.dart';
import '../widget/if_results_body.dart';


class Search extends StatelessWidget
{
  Search({super.key, required this.fruitName,});
  final String fruitName;
  final TextEditingController productsSearchController = TextEditingController(); 
  
  @override
  Widget build(BuildContext context)
  {
    AppLogger.debug('Received fruitName: $fruitName'); // Just for debug
    return Scaffold(
      appBar:  CustomAppBar(title: S.current.search2, isNotifications: true,),
      body: CustomSingleChild(
        children:
        [
          Sizes.s16.verticalSpace,
          SearchBarWidget(
            controller: productsSearchController..text = fruitName,
            searchIconOnTap: () {
              if (RouteTracker.currentRoute == AppRoutes.search && productsSearchController.text.isEmpty)
              {CustomSnackBar().show(context, 'عايز تبحث ازاي والبحث فاضي؟؟');}
              else{AppLogger.debug('Addsaa');}
            },
            onSubmitted: (value) {
              if (RouteTracker.currentRoute == AppRoutes.search && productsSearchController.text.isEmpty)
              {CustomSnackBar().show(context, 'عايز تبحث ازاي والبحث فاضي؟؟');}
              else{AppLogger.debug('Addsaa');}
            },
          ),
          //IfNoResultsBody(),
          const IfResultsBody(),
          //IfPreviousResultsBody(),
        ],
      ),
    );
  }
}