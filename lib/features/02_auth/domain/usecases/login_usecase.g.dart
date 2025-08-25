// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(loginUsecase)
const loginUsecaseProvider = LoginUsecaseFamily._();

final class LoginUsecaseProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  const LoginUsecaseProvider._({
    required LoginUsecaseFamily super.from,
    required LoginEntity super.argument,
  }) : super(
         retry: null,
         name: r'loginUsecaseProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$loginUsecaseHash();

  @override
  String toString() {
    return r'loginUsecaseProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    final argument = this.argument as LoginEntity;
    return loginUsecase(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is LoginUsecaseProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$loginUsecaseHash() => r'9adc7eddd1b4b5029f5c501a5f890df7215e367c';

final class LoginUsecaseFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<void>, LoginEntity> {
  const LoginUsecaseFamily._()
    : super(
        retry: null,
        name: r'loginUsecaseProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  LoginUsecaseProvider call(LoginEntity credentials) =>
      LoginUsecaseProvider._(argument: credentials, from: this);

  @override
  String toString() => r'loginUsecaseProvider';
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
