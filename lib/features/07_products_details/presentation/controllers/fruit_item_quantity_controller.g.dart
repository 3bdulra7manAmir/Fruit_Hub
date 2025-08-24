// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fruit_item_quantity_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fruitItemQuantityHash() => r'df2b5454d942e1a06571f9fd5ee5dc016147b0e0';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$FruitItemQuantity extends BuildlessAutoDisposeNotifier<int> {
  late final String fruitId;

  int build(
    String fruitId,
  );
}

/// See also [FruitItemQuantity].
@ProviderFor(FruitItemQuantity)
const fruitItemQuantityProvider = FruitItemQuantityFamily();

/// See also [FruitItemQuantity].
class FruitItemQuantityFamily extends Family<int> {
  /// See also [FruitItemQuantity].
  const FruitItemQuantityFamily();

  /// See also [FruitItemQuantity].
  FruitItemQuantityProvider call(
    String fruitId,
  ) {
    return FruitItemQuantityProvider(
      fruitId,
    );
  }

  @override
  FruitItemQuantityProvider getProviderOverride(
    covariant FruitItemQuantityProvider provider,
  ) {
    return call(
      provider.fruitId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'fruitItemQuantityProvider';
}

/// See also [FruitItemQuantity].
class FruitItemQuantityProvider
    extends AutoDisposeNotifierProviderImpl<FruitItemQuantity, int> {
  /// See also [FruitItemQuantity].
  FruitItemQuantityProvider(
    String fruitId,
  ) : this._internal(
          () => FruitItemQuantity()..fruitId = fruitId,
          from: fruitItemQuantityProvider,
          name: r'fruitItemQuantityProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fruitItemQuantityHash,
          dependencies: FruitItemQuantityFamily._dependencies,
          allTransitiveDependencies:
              FruitItemQuantityFamily._allTransitiveDependencies,
          fruitId: fruitId,
        );

  FruitItemQuantityProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.fruitId,
  }) : super.internal();

  final String fruitId;

  @override
  int runNotifierBuild(
    covariant FruitItemQuantity notifier,
  ) {
    return notifier.build(
      fruitId,
    );
  }

  @override
  Override overrideWith(FruitItemQuantity Function() create) {
    return ProviderOverride(
      origin: this,
      override: FruitItemQuantityProvider._internal(
        () => create()..fruitId = fruitId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        fruitId: fruitId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<FruitItemQuantity, int> createElement() {
    return _FruitItemQuantityProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FruitItemQuantityProvider && other.fruitId == fruitId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, fruitId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FruitItemQuantityRef on AutoDisposeNotifierProviderRef<int> {
  /// The parameter `fruitId` of this provider.
  String get fruitId;
}

class _FruitItemQuantityProviderElement
    extends AutoDisposeNotifierProviderElement<FruitItemQuantity, int>
    with FruitItemQuantityRef {
  _FruitItemQuantityProviderElement(super.provider);

  @override
  String get fruitId => (origin as FruitItemQuantityProvider).fruitId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
