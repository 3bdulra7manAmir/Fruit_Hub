// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_img_picker.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(userImgPicker)
const userImgPickerProvider = UserImgPickerProvider._();

final class UserImgPickerProvider
    extends $FunctionalProvider<AsyncValue<XFile?>, XFile?, FutureOr<XFile?>>
    with $FutureModifier<XFile?>, $FutureProvider<XFile?> {
  const UserImgPickerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userImgPickerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userImgPickerHash();

  @$internal
  @override
  $FutureProviderElement<XFile?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<XFile?> create(Ref ref) {
    return userImgPicker(ref);
  }
}

String _$userImgPickerHash() => r'73bc76774d793dc67fde401a350321ea0cb6b5fe';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
