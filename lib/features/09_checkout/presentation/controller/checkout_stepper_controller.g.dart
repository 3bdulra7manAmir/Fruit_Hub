// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_stepper_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(CheckoutStepperController)
const checkoutStepperControllerProvider = CheckoutStepperControllerProvider._();

final class CheckoutStepperControllerProvider
    extends
        $NotifierProvider<
          CheckoutStepperController,
          CheckoutStepperController
        > {
  const CheckoutStepperControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'checkoutStepperControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$checkoutStepperControllerHash();

  @$internal
  @override
  CheckoutStepperController create() => CheckoutStepperController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CheckoutStepperController value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CheckoutStepperController>(value),
    );
  }
}

String _$checkoutStepperControllerHash() =>
    r'00a58d15393f842ed51572c59b9e85d6cdeb6c6b';

abstract class _$CheckoutStepperController
    extends $Notifier<CheckoutStepperController> {
  CheckoutStepperController build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<CheckoutStepperController, CheckoutStepperController>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CheckoutStepperController, CheckoutStepperController>,
              CheckoutStepperController,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
