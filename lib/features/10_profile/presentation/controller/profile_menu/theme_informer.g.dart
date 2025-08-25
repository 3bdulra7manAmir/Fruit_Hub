// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_informer.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(ThemeInformer)
const themeInformerProvider = ThemeInformerProvider._();

final class ThemeInformerProvider
    extends $NotifierProvider<ThemeInformer, bool> {
  const ThemeInformerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'themeInformerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$themeInformerHash();

  @$internal
  @override
  ThemeInformer create() => ThemeInformer();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$themeInformerHash() => r'2dff44ea06d660b0d2eec24f4c3755af1f08afe7';

abstract class _$ThemeInformer extends $Notifier<bool> {
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
