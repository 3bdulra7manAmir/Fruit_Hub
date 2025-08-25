// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_cards_repo.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(paymentCardsRepo)
const paymentCardsRepoProvider = PaymentCardsRepoProvider._();

final class PaymentCardsRepoProvider
    extends
        $FunctionalProvider<
          PaymentCardsRepo,
          PaymentCardsRepo,
          PaymentCardsRepo
        >
    with $Provider<PaymentCardsRepo> {
  const PaymentCardsRepoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'paymentCardsRepoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$paymentCardsRepoHash();

  @$internal
  @override
  $ProviderElement<PaymentCardsRepo> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  PaymentCardsRepo create(Ref ref) {
    return paymentCardsRepo(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PaymentCardsRepo value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PaymentCardsRepo>(value),
    );
  }
}

String _$paymentCardsRepoHash() => r'ebb32848ce302d56c0a1e9d2bfe85c210bec3bc0';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
