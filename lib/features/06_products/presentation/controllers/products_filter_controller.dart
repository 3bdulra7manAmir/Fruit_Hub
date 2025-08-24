import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../03_home/domain/entity/fruit_entity.dart';
import '../../../03_home/presentation/controller/fruit_controller.dart';
import 'sort_radio_controller.dart';

part 'products_filter_controller.g.dart';

@riverpod
class ProductsFilter extends _$ProductsFilter {
  @override
  List<FruitEntity> build() {
    // Instead of Fetching from UseCase، will Fetch from FruitController
    return ref.watch(fruitControllerProvider).maybeWhen(
      data: (fruits) => fruits,
      orElse: () => [],
    );
  }

  void filterByPrice(double start, double end) {
    final allFruits = ref.watch(fruitControllerProvider).maybeWhen(
      data: (fruits) => fruits,
      orElse: () => <FruitEntity>[],
    );

    state = allFruits
      .where((fruit) => fruit.price >= start && fruit.price <= end)
        .toList();
  }

  void sortByOption(SortOptions option) {
    final List<FruitEntity> sorted = [...state];
    switch (option) {
      case SortOptions.highToLow:
        sorted.sort((a, b) => b.price.compareTo(a.price));
        break;
      case SortOptions.lowToHigh:
        sorted.sort((a, b) => a.price.compareTo(b.price));
        break;
      case SortOptions.alphabetOrder:
        sorted.sort((a, b) => a.name.compareTo(b.name));
        break;
    }
    state = sorted;
  }
}
