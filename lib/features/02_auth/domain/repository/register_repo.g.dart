// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_repo.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(registerRepo)
const registerRepoProvider = RegisterRepoProvider._();

final class RegisterRepoProvider
    extends $FunctionalProvider<RegisterRepo, RegisterRepo, RegisterRepo>
    with $Provider<RegisterRepo> {
  const RegisterRepoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'registerRepoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$registerRepoHash();

  @$internal
  @override
  $ProviderElement<RegisterRepo> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  RegisterRepo create(Ref ref) {
    return registerRepo(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RegisterRepo value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RegisterRepo>(value),
    );
  }
}

String _$registerRepoHash() => r'dade4f91f1e06af5a6ba694c1a6cfb789d838404';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
