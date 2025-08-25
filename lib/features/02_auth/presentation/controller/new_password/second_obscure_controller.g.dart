// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'second_obscure_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(SecondObscurePassword)
const secondObscurePasswordProvider = SecondObscurePasswordProvider._();

final class SecondObscurePasswordProvider
    extends $NotifierProvider<SecondObscurePassword, bool> {
  const SecondObscurePasswordProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'secondObscurePasswordProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$secondObscurePasswordHash();

  @$internal
  @override
  SecondObscurePassword create() => SecondObscurePassword();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$secondObscurePasswordHash() =>
    r'fbc52b66388523135316630a9df347d4aeff1fe9';

abstract class _$SecondObscurePassword extends $Notifier<bool> {
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
