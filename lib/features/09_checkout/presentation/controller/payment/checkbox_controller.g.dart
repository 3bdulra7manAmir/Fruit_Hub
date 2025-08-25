// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkbox_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(KeepCardCheckbox)
const keepCardCheckboxProvider = KeepCardCheckboxProvider._();

final class KeepCardCheckboxProvider
    extends $NotifierProvider<KeepCardCheckbox, bool> {
  const KeepCardCheckboxProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'keepCardCheckboxProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$keepCardCheckboxHash();

  @$internal
  @override
  KeepCardCheckbox create() => KeepCardCheckbox();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$keepCardCheckboxHash() => r'3ef65f9ac3ad4235b57f7d637d108c1d72fb88a1';

abstract class _$KeepCardCheckbox extends $Notifier<bool> {
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
