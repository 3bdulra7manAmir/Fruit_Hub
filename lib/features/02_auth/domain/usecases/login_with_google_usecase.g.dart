// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_with_google_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(loginWithGoogleUsecase)
const loginWithGoogleUsecaseProvider = LoginWithGoogleUsecaseProvider._();

final class LoginWithGoogleUsecaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<LoginWithGoogleEntity>,
          LoginWithGoogleEntity,
          FutureOr<LoginWithGoogleEntity>
        >
    with
        $FutureModifier<LoginWithGoogleEntity>,
        $FutureProvider<LoginWithGoogleEntity> {
  const LoginWithGoogleUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginWithGoogleUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginWithGoogleUsecaseHash();

  @$internal
  @override
  $FutureProviderElement<LoginWithGoogleEntity> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<LoginWithGoogleEntity> create(Ref ref) {
    return loginWithGoogleUsecase(ref);
  }
}

String _$loginWithGoogleUsecaseHash() =>
    r'0e66baa1ee9c6071123d0cfb0b71f6a56db06128';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
