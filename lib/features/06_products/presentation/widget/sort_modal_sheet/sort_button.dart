import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../core/utils/logger/app_logger.dart';
import '../../../../../core/widgets/buttons/button.dart';
import '../../controllers/sort_radio_controller.dart';

class AlpahpetFiltrationButtonWidget extends ConsumerWidget
{
  const AlpahpetFiltrationButtonWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return CustomButton(
      text: S.current.clearance,
      onPressed: ()
      {
        final selected = ref.read(sortRadioProvider);
        AppLogger.debug('User selected sort type: $selected');
        AppRouter.router.pop();
      },
    );
  }
}
