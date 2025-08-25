// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forget_password_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(sendResetPasswordEmail)
const sendResetPasswordEmailProvider = SendResetPasswordEmailProvider._();

final class SendResetPasswordEmailProvider
    extends
        $FunctionalProvider<
          SendResetPasswordEmail,
          SendResetPasswordEmail,
          SendResetPasswordEmail
        >
    with $Provider<SendResetPasswordEmail> {
  const SendResetPasswordEmailProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sendResetPasswordEmailProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sendResetPasswordEmailHash();

  @$internal
  @override
  $ProviderElement<SendResetPasswordEmail> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SendResetPasswordEmail create(Ref ref) {
    return sendResetPasswordEmail(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SendResetPasswordEmail value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SendResetPasswordEmail>(value),
    );
  }
}

String _$sendResetPasswordEmailHash() =>
    r'5daa5095cd7c8da6af649757401112a324886582';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
