import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../core/widgets/buttons/button.dart';
import '../../controllers/slider_line_controller.dart';
import '../sort_modal_sheet/sort_body.dart';

class PriceFiltrationButtonWidget extends ConsumerWidget
{
  const PriceFiltrationButtonWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return CustomButton(
      text: S.current.clearance,
      onPressed: ()
      {
        final range = ref.read(priceSliderProvider);
        log('User selected price range: ${range.start.round()} to ${range.end.round()}');
        AppRouter.router.pop();
        arrangementFilterSheet(context);
      },
    );
  }
}