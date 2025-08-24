// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$registerUsecaseHash() => r'926336bb38a9165a01776f4226fc8a07f9905f09';

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

/// See also [registerUsecase].
@ProviderFor(registerUsecase)
const registerUsecaseProvider = RegisterUsecaseFamily();

/// See also [registerUsecase].
class RegisterUsecaseFamily extends Family<AsyncValue<void>> {
  /// See also [registerUsecase].
  const RegisterUsecaseFamily();

  /// See also [registerUsecase].
  RegisterUsecaseProvider call(
    RegisterEntity credentials,
  ) {
    return RegisterUsecaseProvider(
      credentials,
    );
  }

  @override
  RegisterUsecaseProvider getProviderOverride(
    covariant RegisterUsecaseProvider provider,
  ) {
    return call(
      provider.credentials,
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
  String? get name => r'registerUsecaseProvider';
}

/// See also [registerUsecase].
class RegisterUsecaseProvider extends AutoDisposeFutureProvider<void> {
  /// See also [registerUsecase].
  RegisterUsecaseProvider(
    RegisterEntity credentials,
  ) : this._internal(
          (ref) => registerUsecase(
            ref as RegisterUsecaseRef,
            credentials,
          ),
          from: registerUsecaseProvider,
          name: r'registerUsecaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$registerUsecaseHash,
          dependencies: RegisterUsecaseFamily._dependencies,
          allTransitiveDependencies:
              RegisterUsecaseFamily._allTransitiveDependencies,
          credentials: credentials,
        );

  RegisterUsecaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.credentials,
  }) : super.internal();

  final RegisterEntity credentials;

  @override
  Override overrideWith(
    FutureOr<void> Function(RegisterUsecaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RegisterUsecaseProvider._internal(
        (ref) => create(ref as RegisterUsecaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        credentials: credentials,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _RegisterUsecaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RegisterUsecaseProvider && other.credentials == credentials;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, credentials.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RegisterUsecaseRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `credentials` of this provider.
  RegisterEntity get credentials;
}

class _RegisterUsecaseProviderElement
    extends AutoDisposeFutureProviderElement<void> with RegisterUsecaseRef {
  _RegisterUsecaseProviderElement(super.provider);

  @override
  RegisterEntity get credentials =>
      (origin as RegisterUsecaseProvider).credentials;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
