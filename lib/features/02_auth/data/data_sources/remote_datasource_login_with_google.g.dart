// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_datasource_login_with_google.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(remoteLoginGoogleDataSource)
const remoteLoginGoogleDataSourceProvider =
    RemoteLoginGoogleDataSourceProvider._();

final class RemoteLoginGoogleDataSourceProvider
    extends
        $FunctionalProvider<
          RemoteLoginGoogleDataSource,
          RemoteLoginGoogleDataSource,
          RemoteLoginGoogleDataSource
        >
    with $Provider<RemoteLoginGoogleDataSource> {
  const RemoteLoginGoogleDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'remoteLoginGoogleDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$remoteLoginGoogleDataSourceHash();

  @$internal
  @override
  $ProviderElement<RemoteLoginGoogleDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RemoteLoginGoogleDataSource create(Ref ref) {
    return remoteLoginGoogleDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RemoteLoginGoogleDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RemoteLoginGoogleDataSource>(value),
    );
  }
}

String _$remoteLoginGoogleDataSourceHash() =>
    r'bb614424317048b8a91787f1093ef13fa0406db6';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
