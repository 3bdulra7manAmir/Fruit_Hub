// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mark_as_read_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(MarkAsRead)
const markAsReadProvider = MarkAsReadProvider._();

final class MarkAsReadProvider extends $NotifierProvider<MarkAsRead, bool> {
  const MarkAsReadProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'markAsReadProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$markAsReadHash();

  @$internal
  @override
  MarkAsRead create() => MarkAsRead();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$markAsReadHash() => r'7c542e79c3f6dc56cb65f32c1514a26d5573d2f1';

abstract class _$MarkAsRead extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
