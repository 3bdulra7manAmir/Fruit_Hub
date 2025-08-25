// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_offers_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(fetchOffersUsecase)
const fetchOffersUsecaseProvider = FetchOffersUsecaseProvider._();

final class FetchOffersUsecaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<OffersEntity>>,
          List<OffersEntity>,
          FutureOr<List<OffersEntity>>
        >
    with
        $FutureModifier<List<OffersEntity>>,
        $FutureProvider<List<OffersEntity>> {
  const FetchOffersUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fetchOffersUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fetchOffersUsecaseHash();

  @$internal
  @override
  $FutureProviderElement<List<OffersEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<OffersEntity>> create(Ref ref) {
    return fetchOffersUsecase(ref);
  }
}

String _$fetchOffersUsecaseHash() =>
    r'bdf51f1e5fe7e46d0937b68d377e2c86f94c37de';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
