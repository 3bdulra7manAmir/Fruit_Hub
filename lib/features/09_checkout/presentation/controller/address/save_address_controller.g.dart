// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_address_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(ToggleSwitchSaveAddress)
const toggleSwitchSaveAddressProvider = ToggleSwitchSaveAddressProvider._();

final class ToggleSwitchSaveAddressProvider
    extends $NotifierProvider<ToggleSwitchSaveAddress, bool> {
  const ToggleSwitchSaveAddressProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'toggleSwitchSaveAddressProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$toggleSwitchSaveAddressHash();

  @$internal
  @override
  ToggleSwitchSaveAddress create() => ToggleSwitchSaveAddress();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$toggleSwitchSaveAddressHash() =>
    r'72f224d7bc527e7a5505e1100599afd9baf20098';

abstract class _$ToggleSwitchSaveAddress extends $Notifier<bool> {
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
