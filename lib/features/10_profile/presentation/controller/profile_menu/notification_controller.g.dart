// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(ToggleSwitchNotifications)
const toggleSwitchNotificationsProvider = ToggleSwitchNotificationsProvider._();

final class ToggleSwitchNotificationsProvider
    extends $NotifierProvider<ToggleSwitchNotifications, bool> {
  const ToggleSwitchNotificationsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'toggleSwitchNotificationsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$toggleSwitchNotificationsHash();

  @$internal
  @override
  ToggleSwitchNotifications create() => ToggleSwitchNotifications();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$toggleSwitchNotificationsHash() =>
    r'849112c79e0323e6d52f2e4ac8d8de991b656632';

abstract class _$ToggleSwitchNotifications extends $Notifier<bool> {
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
