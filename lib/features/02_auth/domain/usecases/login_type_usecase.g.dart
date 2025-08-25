// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_type_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(loginTypeUsecase)
const loginTypeUsecaseProvider = LoginTypeUsecaseFamily._();

final class LoginTypeUsecaseProvider
    extends $FunctionalProvider<AsyncValue<dynamic>, dynamic, FutureOr<dynamic>>
    with $FutureModifier<dynamic>, $FutureProvider<dynamic> {
  const LoginTypeUsecaseProvider._({
    required LoginTypeUsecaseFamily super.from,
    required ({LoginMethod method, LoginEntity? credentials}) super.argument,
  }) : super(
         retry: null,
         name: r'loginTypeUsecaseProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$loginTypeUsecaseHash();

  @override
  String toString() {
    return r'loginTypeUsecaseProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<dynamic> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<dynamic> create(Ref ref) {
    final argument =
        this.argument as ({LoginMethod method, LoginEntity? credentials});
    return loginTypeUsecase(
      ref,
      method: argument.method,
      credentials: argument.credentials,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is LoginTypeUsecaseProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$loginTypeUsecaseHash() => r'a8d1a66529f336cd0b76f0393a458e203bea0bba';

final class LoginTypeUsecaseFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<dynamic>,
          ({LoginMethod method, LoginEntity? credentials})
        > {
  const LoginTypeUsecaseFamily._()
    : super(
        retry: null,
        name: r'loginTypeUsecaseProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  LoginTypeUsecaseProvider call({
    required LoginMethod method,
    LoginEntity? credentials,
  }) => LoginTypeUsecaseProvider._(
    argument: (method: method, credentials: credentials),
    from: this,
  );

  @override
  String toString() => r'loginTypeUsecaseProvider';
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
