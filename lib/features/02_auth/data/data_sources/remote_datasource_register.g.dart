// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_datasource_register.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(remoteRegisterDataSource)
const remoteRegisterDataSourceProvider = RemoteRegisterDataSourceProvider._();

final class RemoteRegisterDataSourceProvider
    extends
        $FunctionalProvider<
          RemoteRegisterDataSource,
          RemoteRegisterDataSource,
          RemoteRegisterDataSource
        >
    with $Provider<RemoteRegisterDataSource> {
  const RemoteRegisterDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'remoteRegisterDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$remoteRegisterDataSourceHash();

  @$internal
  @override
  $ProviderElement<RemoteRegisterDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RemoteRegisterDataSource create(Ref ref) {
    return remoteRegisterDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RemoteRegisterDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RemoteRegisterDataSource>(value),
    );
  }
}

String _$remoteRegisterDataSourceHash() =>
    r'd84ecef5518b96bbdbca52a0b5b9a4db55f4eba8';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
