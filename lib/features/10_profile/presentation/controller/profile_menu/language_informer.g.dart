// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_informer.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(LanguageInformer)
const languageInformerProvider = LanguageInformerProvider._();

final class LanguageInformerProvider
    extends $NotifierProvider<LanguageInformer, bool> {
  const LanguageInformerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'languageInformerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$languageInformerHash();

  @$internal
  @override
  LanguageInformer create() => LanguageInformer();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$languageInformerHash() => r'39d691333d5dd1180e9bd2ad738b5b4dc7d6eddb';

abstract class _$LanguageInformer extends $Notifier<bool> {
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
