// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$loginRepoHash() => r'9421a5f79cc13014745fcf0eb37ebe9b436f2054';

/// See also [loginRepo].
@ProviderFor(loginRepo)
final loginRepoProvider = AutoDisposeProvider<LoginRepo>.internal(
  loginRepo,
  name: r'loginRepoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$loginRepoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef LoginRepoRef = AutoDisposeProviderRef<LoginRepo>;
String _$loginUsecaseHash() => r'9adc7eddd1b4b5029f5c501a5f890df7215e367c';

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

/// See also [loginUsecase].
@ProviderFor(loginUsecase)
const loginUsecaseProvider = LoginUsecaseFamily();

/// See also [loginUsecase].
class LoginUsecaseFamily extends Family<AsyncValue<void>> {
  /// See also [loginUsecase].
  const LoginUsecaseFamily();

  /// See also [loginUsecase].
  LoginUsecaseProvider call(
    LoginEntity credentials,
  ) {
    return LoginUsecaseProvider(
      credentials,
    );
  }

  @override
  LoginUsecaseProvider getProviderOverride(
    covariant LoginUsecaseProvider provider,
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
  String? get name => r'loginUsecaseProvider';
}

/// See also [loginUsecase].
class LoginUsecaseProvider extends AutoDisposeFutureProvider<void> {
  /// See also [loginUsecase].
  LoginUsecaseProvider(
    LoginEntity credentials,
  ) : this._internal(
          (ref) => loginUsecase(
            ref as LoginUsecaseRef,
            credentials,
          ),
          from: loginUsecaseProvider,
          name: r'loginUsecaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$loginUsecaseHash,
          dependencies: LoginUsecaseFamily._dependencies,
          allTransitiveDependencies:
              LoginUsecaseFamily._allTransitiveDependencies,
          credentials: credentials,
        );

  LoginUsecaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.credentials,
  }) : super.internal();

  final LoginEntity credentials;

  @override
  Override overrideWith(
    FutureOr<void> Function(LoginUsecaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LoginUsecaseProvider._internal(
        (ref) => create(ref as LoginUsecaseRef),
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
    return _LoginUsecaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LoginUsecaseProvider && other.credentials == credentials;
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
mixin LoginUsecaseRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `credentials` of this provider.
  LoginEntity get credentials;
}

class _LoginUsecaseProviderElement
    extends AutoDisposeFutureProviderElement<void> with LoginUsecaseRef {
  _LoginUsecaseProviderElement(super.provider);

  @override
  LoginEntity get credentials => (origin as LoginUsecaseProvider).credentials;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
