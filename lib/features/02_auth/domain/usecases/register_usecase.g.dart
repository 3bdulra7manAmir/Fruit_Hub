// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(registerUsecase)
const registerUsecaseProvider = RegisterUsecaseFamily._();

final class RegisterUsecaseProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  const RegisterUsecaseProvider._({
    required RegisterUsecaseFamily super.from,
    required RegisterEntity super.argument,
  }) : super(
         retry: null,
         name: r'registerUsecaseProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$registerUsecaseHash();

  @override
  String toString() {
    return r'registerUsecaseProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    final argument = this.argument as RegisterEntity;
    return registerUsecase(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is RegisterUsecaseProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$registerUsecaseHash() => r'926336bb38a9165a01776f4226fc8a07f9905f09';

final class RegisterUsecaseFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<void>, RegisterEntity> {
  const RegisterUsecaseFamily._()
    : super(
        retry: null,
        name: r'registerUsecaseProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  RegisterUsecaseProvider call(RegisterEntity credentials) =>
      RegisterUsecaseProvider._(argument: credentials, from: this);

  @override
  String toString() => r'registerUsecaseProvider';
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
