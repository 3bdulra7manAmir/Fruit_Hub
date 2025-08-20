// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_handler.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$resetPasswordLinkHandlerHash() =>
    r'd462c49cb8c7897f26e15e8a64c4e6ea3350d7c5';

/// Singleton Responsible for listening for deep links and update em [ResetCode]
///
/// Copied from [resetPasswordLinkHandler].
@ProviderFor(resetPasswordLinkHandler)
final resetPasswordLinkHandlerProvider =
    AutoDisposeProvider<ResetPasswordLinkHandler>.internal(
      resetPasswordLinkHandler,
      name: r'resetPasswordLinkHandlerProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$resetPasswordLinkHandlerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ResetPasswordLinkHandlerRef =
    AutoDisposeProviderRef<ResetPasswordLinkHandler>;
String _$resetCodeHash() => r'3ffbb74f425b14ecd23159227d3daeff168483a5';

/// [Provider Stores oobCode Comming from Firebase link]
///
/// Copied from [ResetCode].
@ProviderFor(ResetCode)
final resetCodeProvider =
    AutoDisposeNotifierProvider<ResetCode, String?>.internal(
      ResetCode.new,
      name: r'resetCodeProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$resetCodeHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$ResetCode = AutoDisposeNotifier<String?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
