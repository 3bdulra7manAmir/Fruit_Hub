// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_fruit_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(fetchFruitsUsecase)
const fetchFruitsUsecaseProvider = FetchFruitsUsecaseProvider._();

final class FetchFruitsUsecaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<FruitEntity>>,
          List<FruitEntity>,
          FutureOr<List<FruitEntity>>
        >
    with
        $FutureModifier<List<FruitEntity>>,
        $FutureProvider<List<FruitEntity>> {
  const FetchFruitsUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fetchFruitsUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fetchFruitsUsecaseHash();

  @$internal
  @override
  $FutureProviderElement<List<FruitEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<FruitEntity>> create(Ref ref) {
    return fetchFruitsUsecase(ref);
  }
}

String _$fetchFruitsUsecaseHash() =>
    r'44811ddb78eace3a78987826d6ce1c5f7e9590d7';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
