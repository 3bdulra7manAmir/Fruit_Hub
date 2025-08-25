// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_filter_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(ProductsFilter)
const productsFilterProvider = ProductsFilterProvider._();

final class ProductsFilterProvider
    extends $NotifierProvider<ProductsFilter, List<FruitEntity>> {
  const ProductsFilterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productsFilterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$productsFilterHash();

  @$internal
  @override
  ProductsFilter create() => ProductsFilter();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<FruitEntity> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<FruitEntity>>(value),
    );
  }
}

String _$productsFilterHash() => r'e45d485d19279bdb842b8b90e8414704c13daba7';

abstract class _$ProductsFilter extends $Notifier<List<FruitEntity>> {
  List<FruitEntity> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<FruitEntity>, List<FruitEntity>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<FruitEntity>, List<FruitEntity>>,
              List<FruitEntity>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
