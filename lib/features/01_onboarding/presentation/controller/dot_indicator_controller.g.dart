// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dot_indicator_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(DotIndicator)
const dotIndicatorProvider = DotIndicatorProvider._();

final class DotIndicatorProvider extends $NotifierProvider<DotIndicator, int> {
  const DotIndicatorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dotIndicatorProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dotIndicatorHash();

  @$internal
  @override
  DotIndicator create() => DotIndicator();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$dotIndicatorHash() => r'ded3a25d2262d423d89b50d5a12a31e3aa02b000';

abstract class _$DotIndicator extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
