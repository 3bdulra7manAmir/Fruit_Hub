// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_cards_remote_datasource.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(remotePaymentCardsDataSource)
const remotePaymentCardsDataSourceProvider =
    RemotePaymentCardsDataSourceProvider._();

final class RemotePaymentCardsDataSourceProvider
    extends
        $FunctionalProvider<
          RemotePaymentCardsDataSource,
          RemotePaymentCardsDataSource,
          RemotePaymentCardsDataSource
        >
    with $Provider<RemotePaymentCardsDataSource> {
  const RemotePaymentCardsDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'remotePaymentCardsDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$remotePaymentCardsDataSourceHash();

  @$internal
  @override
  $ProviderElement<RemotePaymentCardsDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RemotePaymentCardsDataSource create(Ref ref) {
    return remotePaymentCardsDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RemotePaymentCardsDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RemotePaymentCardsDataSource>(value),
    );
  }
}

String _$remotePaymentCardsDataSourceHash() =>
    r'10c42523aa2e1ea159baacefec160dcc92a48a23';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
