import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../03_home/domain/entity/fruit_entity.dart';

part 'cart_item_controller.g.dart';

class CartItem
{
  CartItem({required this.fruit, this.quantity = 1});

  final FruitEntity fruit;
  final int quantity;

  CartItem copyWith({FruitEntity? fruit, int? quantity})
  {
    return CartItem(
      fruit: fruit ?? this.fruit,
      quantity: quantity ?? this.quantity,
    );
  }
}


@riverpod
class CartItems extends _$CartItems
{
  @override
  List<CartItem> build() => [];
  
  //add item to the empty list
  //inital Display is '1'
void addItem(FruitEntity fruit, {int quantity = 1})
{
  final index = state.indexWhere((item) => item.fruit.fruitId == fruit.fruitId);
  if (index != -1)
  {
    final updatedItem = state[index].copyWith(quantity: state[index].quantity + quantity,);
    state = [
      for (int i = 0; i < state.length; i++)
        if (i == index) updatedItem else state[i],
    ];
  }
  else
  {
    state = [...state, CartItem(fruit: fruit, quantity: quantity)];
  }
}


  //Trash icon of product Remove from the list Logic
  void removeItem(String id)
  {
    state = state.where((item) => item.fruit.fruitId != id).toList();
  }

  //[Just returns the total number of items in Your cart list only...]
  int totalItemsCount()
  {
    return state.fold(0, (sum, item) => sum + item.quantity);
  }

  //[Just returns the total price of all fruits where the 
  //sum of kilos * price then 'final price' = sum * number of wanted fruits of this fruit like 2 or 3 ones]
  //Then to the same for all list items and //Displayed the total sum for all items on Pay button
  double totalPrice()
  {
    return state.fold(0.0, (sum, item) => sum + (item.fruit.price * item.quantity));
  }
}
