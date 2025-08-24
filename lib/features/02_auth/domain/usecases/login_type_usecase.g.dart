// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_type_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$loginTypeUsecaseHash() => r'a8d1a66529f336cd0b76f0393a458e203bea0bba';

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

/// See also [loginTypeUsecase].
@ProviderFor(loginTypeUsecase)
const loginTypeUsecaseProvider = LoginTypeUsecaseFamily();

/// See also [loginTypeUsecase].
class LoginTypeUsecaseFamily extends Family<AsyncValue<dynamic>> {
  /// See also [loginTypeUsecase].
  const LoginTypeUsecaseFamily();

  /// See also [loginTypeUsecase].
  LoginTypeUsecaseProvider call({
    required LoginMethod method,
    LoginEntity? credentials,
  }) {
    return LoginTypeUsecaseProvider(
      method: method,
      credentials: credentials,
    );
  }

  @override
  LoginTypeUsecaseProvider getProviderOverride(
    covariant LoginTypeUsecaseProvider provider,
  ) {
    return call(
      method: provider.method,
      credentials: provider.credentials,
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
  String? get name => r'loginTypeUsecaseProvider';
}

/// See also [loginTypeUsecase].
class LoginTypeUsecaseProvider extends AutoDisposeFutureProvider<dynamic> {
  /// See also [loginTypeUsecase].
  LoginTypeUsecaseProvider({
    required LoginMethod method,
    LoginEntity? credentials,
  }) : this._internal(
          (ref) => loginTypeUsecase(
            ref as LoginTypeUsecaseRef,
            method: method,
            credentials: credentials,
          ),
          from: loginTypeUsecaseProvider,
          name: r'loginTypeUsecaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$loginTypeUsecaseHash,
          dependencies: LoginTypeUsecaseFamily._dependencies,
          allTransitiveDependencies:
              LoginTypeUsecaseFamily._allTransitiveDependencies,
          method: method,
          credentials: credentials,
        );

  LoginTypeUsecaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.method,
    required this.credentials,
  }) : super.internal();

  final LoginMethod method;
  final LoginEntity? credentials;

  @override
  Override overrideWith(
    FutureOr<dynamic> Function(LoginTypeUsecaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LoginTypeUsecaseProvider._internal(
        (ref) => create(ref as LoginTypeUsecaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        method: method,
        credentials: credentials,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<dynamic> createElement() {
    return _LoginTypeUsecaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LoginTypeUsecaseProvider &&
        other.method == method &&
        other.credentials == credentials;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, method.hashCode);
    hash = _SystemHash.combine(hash, credentials.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin LoginTypeUsecaseRef on AutoDisposeFutureProviderRef<dynamic> {
  /// The parameter `method` of this provider.
  LoginMethod get method;

  /// The parameter `credentials` of this provider.
  LoginEntity? get credentials;
}

class _LoginTypeUsecaseProviderElement
    extends AutoDisposeFutureProviderElement<dynamic> with LoginTypeUsecaseRef {
  _LoginTypeUsecaseProviderElement(super.provider);

  @override
  LoginMethod get method => (origin as LoginTypeUsecaseProvider).method;
  @override
  LoginEntity? get credentials =>
      (origin as LoginTypeUsecaseProvider).credentials;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
