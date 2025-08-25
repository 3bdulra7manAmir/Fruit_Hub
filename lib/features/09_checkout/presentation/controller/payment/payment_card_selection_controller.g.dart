// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_card_selection_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(PaymentCardSelection)
const paymentCardSelectionProvider = PaymentCardSelectionProvider._();

final class PaymentCardSelectionProvider
    extends $NotifierProvider<PaymentCardSelection, int> {
  const PaymentCardSelectionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'paymentCardSelectionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$paymentCardSelectionHash();

  @$internal
  @override
  PaymentCardSelection create() => PaymentCardSelection();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$paymentCardSelectionHash() =>
    r'e35e7747412a451ecd68bb67cbd752c7cef94a40';

abstract class _$PaymentCardSelection extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
