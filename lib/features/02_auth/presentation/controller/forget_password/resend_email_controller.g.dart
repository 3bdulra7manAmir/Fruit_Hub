// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resend_email_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(ResendEmail)
const resendEmailProvider = ResendEmailProvider._();

final class ResendEmailProvider extends $NotifierProvider<ResendEmail, bool> {
  const ResendEmailProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'resendEmailProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$resendEmailHash();

  @$internal
  @override
  ResendEmail create() => ResendEmail();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$resendEmailHash() => r'a5191a20e80e8a710090da7f06e3ca449f1f24ab';

abstract class _$ResendEmail extends $Notifier<bool> {
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
