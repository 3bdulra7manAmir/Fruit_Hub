// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'obscure_password_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(LoginObscurePassword)
const loginObscurePasswordProvider = LoginObscurePasswordProvider._();

final class LoginObscurePasswordProvider
    extends $NotifierProvider<LoginObscurePassword, bool> {
  const LoginObscurePasswordProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginObscurePasswordProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginObscurePasswordHash();

  @$internal
  @override
  LoginObscurePassword create() => LoginObscurePassword();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$loginObscurePasswordHash() =>
    r'7167311fc77c081eacd1fd0b8bfae22f84a5d389';

abstract class _$LoginObscurePassword extends $Notifier<bool> {
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
