// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sort_radio_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(SortRadio)
const sortRadioProvider = SortRadioProvider._();

final class SortRadioProvider
    extends $NotifierProvider<SortRadio, SortOptions> {
  const SortRadioProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sortRadioProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sortRadioHash();

  @$internal
  @override
  SortRadio create() => SortRadio();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SortOptions value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SortOptions>(value),
    );
  }
}

String _$sortRadioHash() => r'c040296e58c0a3a89a326adc0d36833a39d35ac5';

abstract class _$SortRadio extends $Notifier<SortOptions> {
  SortOptions build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<SortOptions, SortOptions>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SortOptions, SortOptions>,
              SortOptions,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
