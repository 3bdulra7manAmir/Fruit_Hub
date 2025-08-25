// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(Favourite)
const favouriteProvider = FavouriteProvider._();

final class FavouriteProvider
    extends $AsyncNotifierProvider<Favourite, Set<String>> {
  const FavouriteProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'favouriteProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$favouriteHash();

  @$internal
  @override
  Favourite create() => Favourite();
}

String _$favouriteHash() => r'022614a32a8f9dd447e40e753c79f0026d47a817';

abstract class _$Favourite extends $AsyncNotifier<Set<String>> {
  FutureOr<Set<String>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<Set<String>>, Set<String>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Set<String>>, Set<String>>,
              AsyncValue<Set<String>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
