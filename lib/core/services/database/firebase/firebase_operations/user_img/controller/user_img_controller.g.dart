// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_img_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userImgFetchHash() => r'f9b52f608ec30f6a3e2cc9c4e26569cdf56199cc';

/// See also [userImgFetch].
@ProviderFor(userImgFetch)
final userImgFetchProvider = AutoDisposeFutureProvider<String?>.internal(
  userImgFetch,
  name: r'userImgFetchProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userImgFetchHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef UserImgFetchRef = AutoDisposeFutureProviderRef<String?>;
String _$userImgUploadHash() => r'83b3b88ecaf4dd70beb7653585d4e4acd2df303c';

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

/// See also [userImgUpload].
@ProviderFor(userImgUpload)
const userImgUploadProvider = UserImgUploadFamily();

/// See also [userImgUpload].
class UserImgUploadFamily extends Family<AsyncValue<void>> {
  /// See also [userImgUpload].
  const UserImgUploadFamily();

  /// See also [userImgUpload].
  UserImgUploadProvider call(File imageFile) {
    return UserImgUploadProvider(imageFile);
  }

  @override
  UserImgUploadProvider getProviderOverride(
    covariant UserImgUploadProvider provider,
  ) {
    return call(provider.imageFile);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'userImgUploadProvider';
}

/// See also [userImgUpload].
class UserImgUploadProvider extends AutoDisposeFutureProvider<void> {
  /// See also [userImgUpload].
  UserImgUploadProvider(File imageFile)
    : this._internal(
        (ref) => userImgUpload(ref as UserImgUploadRef, imageFile),
        from: userImgUploadProvider,
        name: r'userImgUploadProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$userImgUploadHash,
        dependencies: UserImgUploadFamily._dependencies,
        allTransitiveDependencies:
            UserImgUploadFamily._allTransitiveDependencies,
        imageFile: imageFile,
      );

  UserImgUploadProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.imageFile,
  }) : super.internal();

  final File imageFile;

  @override
  Override overrideWith(
    FutureOr<void> Function(UserImgUploadRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UserImgUploadProvider._internal(
        (ref) => create(ref as UserImgUploadRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        imageFile: imageFile,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _UserImgUploadProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserImgUploadProvider && other.imageFile == imageFile;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, imageFile.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UserImgUploadRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `imageFile` of this provider.
  File get imageFile;
}

class _UserImgUploadProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with UserImgUploadRef {
  _UserImgUploadProviderElement(super.provider);

  @override
  File get imageFile => (origin as UserImgUploadProvider).imageFile;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
