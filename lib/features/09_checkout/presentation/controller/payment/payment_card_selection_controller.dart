import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'payment_card_selection_controller.g.dart';

@riverpod
class PaymentCardSelection extends _$PaymentCardSelection
{
  @override
  int build() => 0;

  void selectCard(int index) => state = index;
}
