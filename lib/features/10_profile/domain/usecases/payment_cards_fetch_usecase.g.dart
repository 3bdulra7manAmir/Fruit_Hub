// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_cards_fetch_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(fetchPaymentCardsUsecase)
const fetchPaymentCardsUsecaseProvider = FetchPaymentCardsUsecaseProvider._();

final class FetchPaymentCardsUsecaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<PaymentCardsEntity>>,
          List<PaymentCardsEntity>,
          FutureOr<List<PaymentCardsEntity>>
        >
    with
        $FutureModifier<List<PaymentCardsEntity>>,
        $FutureProvider<List<PaymentCardsEntity>> {
  const FetchPaymentCardsUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fetchPaymentCardsUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fetchPaymentCardsUsecaseHash();

  @$internal
  @override
  $FutureProviderElement<List<PaymentCardsEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<PaymentCardsEntity>> create(Ref ref) {
    return fetchPaymentCardsUsecase(ref);
  }
}

String _$fetchPaymentCardsUsecaseHash() =>
    r'922bbdb359a37722bc4b196dea98ac656f39600c';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
