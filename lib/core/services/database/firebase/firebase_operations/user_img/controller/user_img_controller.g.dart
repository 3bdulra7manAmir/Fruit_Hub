// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_img_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(userImgFetch)
const userImgFetchProvider = UserImgFetchProvider._();

final class UserImgFetchProvider
    extends $FunctionalProvider<AsyncValue<String?>, String?, FutureOr<String?>>
    with $FutureModifier<String?>, $FutureProvider<String?> {
  const UserImgFetchProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userImgFetchProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userImgFetchHash();

  @$internal
  @override
  $FutureProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<String?> create(Ref ref) {
    return userImgFetch(ref);
  }
}

String _$userImgFetchHash() => r'f9b52f608ec30f6a3e2cc9c4e26569cdf56199cc';

@ProviderFor(userImgUpload)
const userImgUploadProvider = UserImgUploadFamily._();

final class UserImgUploadProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  const UserImgUploadProvider._({
    required UserImgUploadFamily super.from,
    required File super.argument,
  }) : super(
         retry: null,
         name: r'userImgUploadProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$userImgUploadHash();

  @override
  String toString() {
    return r'userImgUploadProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    final argument = this.argument as File;
    return userImgUpload(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is UserImgUploadProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$userImgUploadHash() => r'83b3b88ecaf4dd70beb7653585d4e4acd2df303c';

final class UserImgUploadFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<void>, File> {
  const UserImgUploadFamily._()
    : super(
        retry: null,
        name: r'userImgUploadProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UserImgUploadProvider call(File imageFile) =>
      UserImgUploadProvider._(argument: imageFile, from: this);

  @override
  String toString() => r'userImgUploadProvider';
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
