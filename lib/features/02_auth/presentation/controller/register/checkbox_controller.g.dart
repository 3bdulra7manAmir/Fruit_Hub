// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkbox_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(RegisterCheckbox)
const registerCheckboxProvider = RegisterCheckboxProvider._();

final class RegisterCheckboxProvider
    extends $NotifierProvider<RegisterCheckbox, bool> {
  const RegisterCheckboxProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'registerCheckboxProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$registerCheckboxHash();

  @$internal
  @override
  RegisterCheckbox create() => RegisterCheckbox();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$registerCheckboxHash() => r'bce58523c1bb30d4d4bdc1c00687f1520dab58ff';

abstract class _$RegisterCheckbox extends $Notifier<bool> {
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
