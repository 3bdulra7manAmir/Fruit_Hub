// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fruit_item_quantity_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(FruitItemQuantity)
const fruitItemQuantityProvider = FruitItemQuantityFamily._();

final class FruitItemQuantityProvider
    extends $NotifierProvider<FruitItemQuantity, int> {
  const FruitItemQuantityProvider._({
    required FruitItemQuantityFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'fruitItemQuantityProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$fruitItemQuantityHash();

  @override
  String toString() {
    return r'fruitItemQuantityProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  FruitItemQuantity create() => FruitItemQuantity();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is FruitItemQuantityProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$fruitItemQuantityHash() => r'df2b5454d942e1a06571f9fd5ee5dc016147b0e0';

final class FruitItemQuantityFamily extends $Family
    with $ClassFamilyOverride<FruitItemQuantity, int, int, int, String> {
  const FruitItemQuantityFamily._()
    : super(
        retry: null,
        name: r'fruitItemQuantityProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FruitItemQuantityProvider call(String fruitId) =>
      FruitItemQuantityProvider._(argument: fruitId, from: this);

  @override
  String toString() => r'fruitItemQuantityProvider';
}

abstract class _$FruitItemQuantity extends $Notifier<int> {
  late final _$args = ref.$arg as String;
  String get fruitId => _$args;

  int build(String fruitId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
