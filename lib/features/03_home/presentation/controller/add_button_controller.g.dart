// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_button_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(AddButton)
const addButtonProvider = AddButtonProvider._();

final class AddButtonProvider extends $NotifierProvider<AddButton, void> {
  const AddButtonProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addButtonProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addButtonHash();

  @$internal
  @override
  AddButton create() => AddButton();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }
}

String _$addButtonHash() => r'e81149837a275496a859a6d65d479276f0ab74ee';

abstract class _$AddButton extends $Notifier<void> {
  void build();
  @$mustCallSuper
  @override
  void runBuild() {
    build();
    final ref = this.ref as $Ref<void, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<void, void>,
              void,
              Object?,
              Object?
            >;
    element.handleValue(ref, null);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
