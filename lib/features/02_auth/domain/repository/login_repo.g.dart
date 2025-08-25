// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_repo.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(loginRepo)
const loginRepoProvider = LoginRepoProvider._();

final class LoginRepoProvider
    extends $FunctionalProvider<LoginRepo, LoginRepo, LoginRepo>
    with $Provider<LoginRepo> {
  const LoginRepoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginRepoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginRepoHash();

  @$internal
  @override
  $ProviderElement<LoginRepo> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LoginRepo create(Ref ref) {
    return loginRepo(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LoginRepo value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LoginRepo>(value),
    );
  }
}

String _$loginRepoHash() => r'9421a5f79cc13014745fcf0eb37ebe9b436f2054';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
