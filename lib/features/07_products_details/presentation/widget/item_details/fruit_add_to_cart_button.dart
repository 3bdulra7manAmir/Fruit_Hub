import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../core/utils/logger/app_logger.dart';
import '../../../../../core/widgets/buttons/button.dart';
import '../../controllers/cart_item_controller.dart';


class AddToCartButtonWidget extends ConsumerWidget
{
  const AddToCartButtonWidget({super.key, required this.fruitId});
  final String fruitId;

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return CustomButton(
      text: S.current.addToCart,
      onPressed: ()
      {
        AppLogger.debug('Add to Cart has been Pressed...');
        fruitAddButtonOnTap(ref);
        AppRouter.router.goNamed(AppRoutes.cart);
      },
    );
  }

  void fruitAddButtonOnTap(WidgetRef ref)
  {
    AppLogger.debug('Add has been Pressed...');
    final fruitInCart = ref.read(cartItemsProvider).where((item) => item.fruit.fruitId == fruitId).firstOrNull;
    if (fruitInCart != null)
    {ref.read(cartItemsProvider.notifier).addItem(fruitInCart.fruit, 1);}
  }
}