// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_order_expanded_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(CurrentOrderExpanded)
const currentOrderExpandedProvider = CurrentOrderExpandedProvider._();

final class CurrentOrderExpandedProvider
    extends $NotifierProvider<CurrentOrderExpanded, bool> {
  const CurrentOrderExpandedProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentOrderExpandedProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentOrderExpandedHash();

  @$internal
  @override
  CurrentOrderExpanded create() => CurrentOrderExpanded();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$currentOrderExpandedHash() =>
    r'29b64303c282dff0b4d670dd3df635076e532e13';

abstract class _$CurrentOrderExpanded extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
