import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/extensions/numbers_and_dates.dart';
import '../../controllers/fruit_item_quantity_controller.dart';

class ItemPriceTextWidget extends ConsumerWidget
{
  const ItemPriceTextWidget({super.key, 
  required this.itemId,
  required this.itemPrice,
  required this.itemWeight,
  });

  final String itemId;
  final String itemPrice;
  final String itemWeight;

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final quantity = ref.watch(fruitItemQuantityProvider(itemId));
    final totalKilosPrice = '${(double.tryParse(itemPrice)! * double.tryParse(itemWeight)! * quantity)
      .toCleanString().localizedNumbers(ref)} ${S.current.le}';

    return Text(totalKilosPrice, style: AppStyles.bold(fontColor: AppColors.color.kOrange001),);
  }
}