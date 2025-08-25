// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_remote_datasource.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(remoteOfferDataSource)
const remoteOfferDataSourceProvider = RemoteOfferDataSourceProvider._();

final class RemoteOfferDataSourceProvider
    extends
        $FunctionalProvider<
          RemoteOfferDataSource,
          RemoteOfferDataSource,
          RemoteOfferDataSource
        >
    with $Provider<RemoteOfferDataSource> {
  const RemoteOfferDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'remoteOfferDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$remoteOfferDataSourceHash();

  @$internal
  @override
  $ProviderElement<RemoteOfferDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RemoteOfferDataSource create(Ref ref) {
    return remoteOfferDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RemoteOfferDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RemoteOfferDataSource>(value),
    );
  }
}

String _$remoteOfferDataSourceHash() =>
    r'c5146c2a3c30efaa8a971fe932ed5d1319bf32cb';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
