import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../03_home/domain/entity/fruit_entity.dart';
import '../../../03_home/domain/usecases/fetch_fruit_usecase.dart';
import 'sort_radio_controller.dart';

part 'products_filter_controller.g.dart';

@riverpod
class ProductsFilter extends _$ProductsFilter
{
  @override
  List<FruitEntity> build()
  {
    // Original FireBase Values...
    return ref.watch(fetchFruitsUsecaseProvider).maybeWhen(
      data: (fruits) => fruits.cast<FruitEntity>(),
      orElse: () => [],
    );
  }

  void filterByPrice(double start, double end)
  {
    final allFruits = ref.watch(fetchFruitsUsecaseProvider).maybeWhen(
      data: (fruits) => fruits.cast<FruitEntity>(),
      orElse: () => <FruitEntity>[],
    );

    state = allFruits
      .where((fruit) => fruit.price >= start && fruit.price <= end).toList();
  }

  void sortByOption(SortOptions option)
  {
    final List<FruitEntity> sorted = [...state]; // List<Fruit Entity>
    switch (option)
    {
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
