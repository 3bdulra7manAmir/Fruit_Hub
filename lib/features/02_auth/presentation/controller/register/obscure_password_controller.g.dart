// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'obscure_password_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(RegisterObscurePassword)
const registerObscurePasswordProvider = RegisterObscurePasswordProvider._();

final class RegisterObscurePasswordProvider
    extends $NotifierProvider<RegisterObscurePassword, bool> {
  const RegisterObscurePasswordProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'registerObscurePasswordProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$registerObscurePasswordHash();

  @$internal
  @override
  RegisterObscurePassword create() => RegisterObscurePassword();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$registerObscurePasswordHash() =>
    r'80f322c665375fdd71645318ddda00dbf1b10103';

abstract class _$RegisterObscurePassword extends $Notifier<bool> {
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
