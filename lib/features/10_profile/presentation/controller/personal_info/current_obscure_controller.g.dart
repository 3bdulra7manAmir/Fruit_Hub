// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_obscure_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(CurrentObscurePassword)
const currentObscurePasswordProvider = CurrentObscurePasswordProvider._();

final class CurrentObscurePasswordProvider
    extends $NotifierProvider<CurrentObscurePassword, bool> {
  const CurrentObscurePasswordProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentObscurePasswordProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentObscurePasswordHash();

  @$internal
  @override
  CurrentObscurePassword create() => CurrentObscurePassword();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$currentObscurePasswordHash() =>
    r'852e93fe3313ef4bb036d1bc9dd65bddd76239d5';

abstract class _$CurrentObscurePassword extends $Notifier<bool> {
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
