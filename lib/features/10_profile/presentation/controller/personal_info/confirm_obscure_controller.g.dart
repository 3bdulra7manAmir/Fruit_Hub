// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_obscure_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(ConfirmObscurePassword)
const confirmObscurePasswordProvider = ConfirmObscurePasswordProvider._();

final class ConfirmObscurePasswordProvider
    extends $NotifierProvider<ConfirmObscurePassword, bool> {
  const ConfirmObscurePasswordProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'confirmObscurePasswordProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$confirmObscurePasswordHash();

  @$internal
  @override
  ConfirmObscurePassword create() => ConfirmObscurePassword();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$confirmObscurePasswordHash() =>
    r'fb0a55408dcd61fc888f66d5d66a5f13875378e3';

abstract class _$ConfirmObscurePassword extends $Notifier<bool> {
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
