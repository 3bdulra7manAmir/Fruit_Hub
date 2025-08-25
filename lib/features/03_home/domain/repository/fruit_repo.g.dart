// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fruit_repo.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(fruitRepo)
const fruitRepoProvider = FruitRepoProvider._();

final class FruitRepoProvider
    extends $FunctionalProvider<FruitRepo, FruitRepo, FruitRepo>
    with $Provider<FruitRepo> {
  const FruitRepoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fruitRepoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fruitRepoHash();

  @$internal
  @override
  $ProviderElement<FruitRepo> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FruitRepo create(Ref ref) {
    return fruitRepo(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FruitRepo value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FruitRepo>(value),
    );
  }
}

String _$fruitRepoHash() => r'c2369eb20dacc814a018cda4be32149664757a61';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
