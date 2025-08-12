// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_img_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userImageHash() => r'fc9ac5976fe3d2c1b6b272eef99569f0f29bb852';

/// See also [userImage].
@ProviderFor(userImage)
final userImageProvider = FutureProvider<String?>.internal(
  userImage,
  name: r'userImageProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userImageHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef UserImageRef = FutureProviderRef<String?>;
String _$userImageUploadHash() => r'5fd22366f2671726526f024a6cbd17fc41d9c5ea';

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

/// See also [userImageUpload].
@ProviderFor(userImageUpload)
const userImageUploadProvider = UserImageUploadFamily();

/// See also [userImageUpload].
class UserImageUploadFamily extends Family<AsyncValue<void>> {
  /// See also [userImageUpload].
  const UserImageUploadFamily();

  /// See also [userImageUpload].
  UserImageUploadProvider call(File imageFile) {
    return UserImageUploadProvider(imageFile);
  }

  @override
  UserImageUploadProvider getProviderOverride(
    covariant UserImageUploadProvider provider,
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
  String? get name => r'userImageUploadProvider';
}

/// See also [userImageUpload].
class UserImageUploadProvider extends AutoDisposeFutureProvider<void> {
  /// See also [userImageUpload].
  UserImageUploadProvider(File imageFile)
    : this._internal(
        (ref) => userImageUpload(ref as UserImageUploadRef, imageFile),
        from: userImageUploadProvider,
        name: r'userImageUploadProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$userImageUploadHash,
        dependencies: UserImageUploadFamily._dependencies,
        allTransitiveDependencies:
            UserImageUploadFamily._allTransitiveDependencies,
        imageFile: imageFile,
      );

  UserImageUploadProvider._internal(
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
    FutureOr<void> Function(UserImageUploadRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UserImageUploadProvider._internal(
        (ref) => create(ref as UserImageUploadRef),
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
    return _UserImageUploadProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserImageUploadProvider && other.imageFile == imageFile;
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
mixin UserImageUploadRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `imageFile` of this provider.
  File get imageFile;
}

class _UserImageUploadProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with UserImageUploadRef {
  _UserImageUploadProviderElement(super.provider);

  @override
  File get imageFile => (origin as UserImageUploadProvider).imageFile;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
