// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_reset_password_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(confirmResetPassword)
const confirmResetPasswordProvider = ConfirmResetPasswordProvider._();

final class ConfirmResetPasswordProvider
    extends
        $FunctionalProvider<
          ConfirmResetPassword,
          ConfirmResetPassword,
          ConfirmResetPassword
        >
    with $Provider<ConfirmResetPassword> {
  const ConfirmResetPasswordProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'confirmResetPasswordProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$confirmResetPasswordHash();

  @$internal
  @override
  $ProviderElement<ConfirmResetPassword> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ConfirmResetPassword create(Ref ref) {
    return confirmResetPassword(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ConfirmResetPassword value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ConfirmResetPassword>(value),
    );
  }
}

String _$confirmResetPasswordHash() =>
    r'3be9ba7be80c527aadaed02292e8a844bf88cfff';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
