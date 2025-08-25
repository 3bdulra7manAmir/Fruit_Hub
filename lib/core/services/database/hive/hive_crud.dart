import 'package:hive_ce/hive.dart';

import '../../../../features/03_home/domain/entity/fruit_entity.dart';
import 'hive_boxes.dart';

class FruitHiveCRUD
{

  FruitHiveCRUD._();
  static FruitHiveCRUD? _instance;

  static FruitHiveCRUD get instance {
    _instance ??= FruitHiveCRUD._();
    return _instance!;
  }

  Box<FruitEntity> get _fruitDb => HiveBoxes.preserve.fruitEntity;

  // ====== CRUD Operations ======

  /// Save Fruit (Add or Update First Entry)
  Future<void> saveFruit(FruitEntity fruit) async {
    _fruitDb.isEmpty ? await _fruitDb.add(fruit) : await _fruitDb.putAt(0, fruit);
  }

  /// Save Multiple Fruits (Replace all data)
  Future<void> saveFruits(List<FruitEntity> fruits) async {
    await _fruitDb.clear();
    await _fruitDb.addAll(fruits);
  }

  /// Get All Fruits
  List<FruitEntity> getAllFruits() {
    return _fruitDb.values.toList();
  }

  /// Get Fruit by Index
  FruitEntity? getFruitAt(int index) {
    if (index < 0 || index >= _fruitDb.length) return null;
    return _fruitDb.getAt(index);
  }

  /// Update Fruit at specific index
  Future<void> updateFruit(int index, FruitEntity fruit) async {
    if (index >= 0 && index < _fruitDb.length) {
      await _fruitDb.putAt(index, fruit);
    }
  }

  /// Delete Fruit by index
  Future<void> deleteFruitAt(int index) async {
    if (index >= 0 && index < _fruitDb.length) {
      await _fruitDb.deleteAt(index);
    }
  }

  /// Clear all Fruits
  Future<void> clearFruits() async {
    await _fruitDb.clear();
  }
}
