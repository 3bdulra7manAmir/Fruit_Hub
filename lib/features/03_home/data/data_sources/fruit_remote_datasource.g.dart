// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fruit_remote_datasource.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(remoteFruitDataSource)
const remoteFruitDataSourceProvider = RemoteFruitDataSourceProvider._();

final class RemoteFruitDataSourceProvider
    extends
        $FunctionalProvider<
          RemoteFruitDataSource,
          RemoteFruitDataSource,
          RemoteFruitDataSource
        >
    with $Provider<RemoteFruitDataSource> {
  const RemoteFruitDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'remoteFruitDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$remoteFruitDataSourceHash();

  @$internal
  @override
  $ProviderElement<RemoteFruitDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RemoteFruitDataSource create(Ref ref) {
    return remoteFruitDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RemoteFruitDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RemoteFruitDataSource>(value),
    );
  }
}

String _$remoteFruitDataSourceHash() =>
    r'249f7e5497b70e7b528a3ea00273c2cebcc3431f';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
