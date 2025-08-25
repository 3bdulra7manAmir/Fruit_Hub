// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_with_google_repo.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(loginWithGoogleRepo)
const loginWithGoogleRepoProvider = LoginWithGoogleRepoProvider._();

final class LoginWithGoogleRepoProvider
    extends
        $FunctionalProvider<
          LoginWithGoogleRepo,
          LoginWithGoogleRepo,
          LoginWithGoogleRepo
        >
    with $Provider<LoginWithGoogleRepo> {
  const LoginWithGoogleRepoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginWithGoogleRepoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginWithGoogleRepoHash();

  @$internal
  @override
  $ProviderElement<LoginWithGoogleRepo> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  LoginWithGoogleRepo create(Ref ref) {
    return loginWithGoogleRepo(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LoginWithGoogleRepo value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LoginWithGoogleRepo>(value),
    );
  }
}

String _$loginWithGoogleRepoHash() =>
    r'd53bc602342fec6c3fbf25216def8688ecc36fc7';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
