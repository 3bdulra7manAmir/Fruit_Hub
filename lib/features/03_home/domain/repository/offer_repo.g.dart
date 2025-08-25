// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_repo.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(offerRepo)
const offerRepoProvider = OfferRepoProvider._();

final class OfferRepoProvider
    extends $FunctionalProvider<OfferRepo, OfferRepo, OfferRepo>
    with $Provider<OfferRepo> {
  const OfferRepoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'offerRepoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$offerRepoHash();

  @$internal
  @override
  $ProviderElement<OfferRepo> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  OfferRepo create(Ref ref) {
    return offerRepo(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OfferRepo value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OfferRepo>(value),
    );
  }
}

String _$offerRepoHash() => r'88bba51926b277bff551e591639a3c991103b2a7';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
