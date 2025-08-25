// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_data_source_forget_password.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(remoteForgetPasswordDataSource)
const remoteForgetPasswordDataSourceProvider =
    RemoteForgetPasswordDataSourceProvider._();

final class RemoteForgetPasswordDataSourceProvider
    extends
        $FunctionalProvider<
          RemoteForgetPasswordDataSource,
          RemoteForgetPasswordDataSource,
          RemoteForgetPasswordDataSource
        >
    with $Provider<RemoteForgetPasswordDataSource> {
  const RemoteForgetPasswordDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'remoteForgetPasswordDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$remoteForgetPasswordDataSourceHash();

  @$internal
  @override
  $ProviderElement<RemoteForgetPasswordDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RemoteForgetPasswordDataSource create(Ref ref) {
    return remoteForgetPasswordDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RemoteForgetPasswordDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RemoteForgetPasswordDataSource>(
        value,
      ),
    );
  }
}

String _$remoteForgetPasswordDataSourceHash() =>
    r'9ae9de78f49df38a662d04c38f232c629d72d5bf';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
