// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fruit_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(FruitController)
const fruitControllerProvider = FruitControllerProvider._();

final class FruitControllerProvider
    extends $AsyncNotifierProvider<FruitController, List<FruitEntity>> {
  const FruitControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fruitControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fruitControllerHash();

  @$internal
  @override
  FruitController create() => FruitController();
}

String _$fruitControllerHash() => r'1aa83c767f3f36b00e98bb235876f116d447848d';

abstract class _$FruitController extends $AsyncNotifier<List<FruitEntity>> {
  FutureOr<List<FruitEntity>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<List<FruitEntity>>, List<FruitEntity>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<FruitEntity>>, List<FruitEntity>>,
              AsyncValue<List<FruitEntity>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
