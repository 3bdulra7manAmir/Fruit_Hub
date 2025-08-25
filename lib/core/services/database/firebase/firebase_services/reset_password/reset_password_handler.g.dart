// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_handler.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

/// [Provider Stores oobCode Comming from Firebase link]
@ProviderFor(ResetCode)
const resetCodeProvider = ResetCodeProvider._();

/// [Provider Stores oobCode Comming from Firebase link]
final class ResetCodeProvider extends $NotifierProvider<ResetCode, String?> {
  /// [Provider Stores oobCode Comming from Firebase link]
  const ResetCodeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'resetCodeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$resetCodeHash();

  @$internal
  @override
  ResetCode create() => ResetCode();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$resetCodeHash() => r'3ffbb74f425b14ecd23159227d3daeff168483a5';

abstract class _$ResetCode extends $Notifier<String?> {
  String? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<String?, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String?, String?>,
              String?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

/// Singleton Responsible for listening for deep links and update em [ResetCode]
@ProviderFor(resetPasswordLinkHandler)
const resetPasswordLinkHandlerProvider = ResetPasswordLinkHandlerProvider._();

/// Singleton Responsible for listening for deep links and update em [ResetCode]
final class ResetPasswordLinkHandlerProvider
    extends
        $FunctionalProvider<
          ResetPasswordLinkHandler,
          ResetPasswordLinkHandler,
          ResetPasswordLinkHandler
        >
    with $Provider<ResetPasswordLinkHandler> {
  /// Singleton Responsible for listening for deep links and update em [ResetCode]
  const ResetPasswordLinkHandlerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'resetPasswordLinkHandlerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$resetPasswordLinkHandlerHash();

  @$internal
  @override
  $ProviderElement<ResetPasswordLinkHandler> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ResetPasswordLinkHandler create(Ref ref) {
    return resetPasswordLinkHandler(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ResetPasswordLinkHandler value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ResetPasswordLinkHandler>(value),
    );
  }
}

String _$resetPasswordLinkHandlerHash() =>
    r'd462c49cb8c7897f26e15e8a64c4e6ea3350d7c5';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
