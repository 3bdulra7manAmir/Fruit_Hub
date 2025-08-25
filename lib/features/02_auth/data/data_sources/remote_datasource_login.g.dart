// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_datasource_login.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(remoteLoginDataSource)
const remoteLoginDataSourceProvider = RemoteLoginDataSourceProvider._();

final class RemoteLoginDataSourceProvider
    extends
        $FunctionalProvider<
          RemoteLoginDataSource,
          RemoteLoginDataSource,
          RemoteLoginDataSource
        >
    with $Provider<RemoteLoginDataSource> {
  const RemoteLoginDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'remoteLoginDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$remoteLoginDataSourceHash();

  @$internal
  @override
  $ProviderElement<RemoteLoginDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RemoteLoginDataSource create(Ref ref) {
    return remoteLoginDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RemoteLoginDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RemoteLoginDataSource>(value),
    );
  }
}

String _$remoteLoginDataSourceHash() =>
    r'd2b8cf67e3f4eb4e04e3263f1f0310286625139f';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
