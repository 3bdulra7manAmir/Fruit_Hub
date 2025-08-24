import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/services/database/hive/hive_crud.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../domain/entity/fruit_entity.dart';
import '../../domain/usecases/fetch_fruit_usecase.dart';

part 'fruit_controller.g.dart';

@riverpod
class FruitController extends _$FruitController {
  @override
  Future<List<FruitEntity>> build() async {
    state = const AsyncValue.loading();

    // Try Fetching From Remote DataSoruce
    final result = await AsyncValue.guard(
      () => ref.read(fetchFruitsUsecaseProvider.future),
    );

    return result.when(
      data: (fruits) async {
        // IF THERE IS DATA save in Have
        await FruitHiveCRUD.instance.saveFruits(fruits);
        AppLogger.info('Fruits saved to Hive: ${fruits.map((f) => f.name).toList()}');
        return fruits;
      },
      error: (err, st) async {
        // IF THERE IS AN ERROR FETCH FROM SAVED CACHE before in hive
        final cached = FruitHiveCRUD.instance.getAllFruits();
        if (cached.isNotEmpty) return cached;

        throw err;
      },
      loading: () => [],
    );
  }

  Future<void> refreshFruits() async {
    state = const AsyncValue.loading();
    final fruits = await ref.read(fetchFruitsUsecaseProvider.future);
    await FruitHiveCRUD.instance.saveFruits(fruits);
    state = AsyncValue.data(fruits);
  }
}
