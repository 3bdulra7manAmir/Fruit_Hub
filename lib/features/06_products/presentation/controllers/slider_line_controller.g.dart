// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slider_line_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(PriceSlider)
const priceSliderProvider = PriceSliderProvider._();

final class PriceSliderProvider
    extends $NotifierProvider<PriceSlider, RangeValues> {
  const PriceSliderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'priceSliderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$priceSliderHash();

  @$internal
  @override
  PriceSlider create() => PriceSlider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RangeValues value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RangeValues>(value),
    );
  }
}

String _$priceSliderHash() => r'24bcb1bac66a3d54e68e2346a178e47d29fa2078';

abstract class _$PriceSlider extends $Notifier<RangeValues> {
  RangeValues build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<RangeValues, RangeValues>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<RangeValues, RangeValues>,
              RangeValues,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
