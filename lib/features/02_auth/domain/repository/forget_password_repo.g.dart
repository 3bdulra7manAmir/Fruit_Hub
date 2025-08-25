// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forget_password_repo.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(forgetPasswordRepo)
const forgetPasswordRepoProvider = ForgetPasswordRepoProvider._();

final class ForgetPasswordRepoProvider
    extends
        $FunctionalProvider<
          ForgetPasswordRepo,
          ForgetPasswordRepo,
          ForgetPasswordRepo
        >
    with $Provider<ForgetPasswordRepo> {
  const ForgetPasswordRepoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'forgetPasswordRepoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$forgetPasswordRepoHash();

  @$internal
  @override
  $ProviderElement<ForgetPasswordRepo> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ForgetPasswordRepo create(Ref ref) {
    return forgetPasswordRepo(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ForgetPasswordRepo value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ForgetPasswordRepo>(value),
    );
  }
}

String _$forgetPasswordRepoHash() =>
    r'942375dc713d86c1b99eb9be000712edb233b331';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
