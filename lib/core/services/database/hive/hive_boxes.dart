import 'package:hive/hive.dart';
import '../../../../features/03_home/domain/entity/fruit_entity.dart';
import '../../../../features/03_home/domain/entity/fruit_sub_entity.dart';

class HiveBoxes
{
  HiveBoxes._();

  static final register = RegisterBox._();
  static final open = OpenBox._();
  static final preserve = PreserveBox._();
}

/// Registering Adapters
class RegisterBox
{
  RegisterBox._();

  void registerAdapters() {
    Hive.registerAdapter(FruitsEntityAdapter());
    Hive.registerAdapter(HealthInfoEntityAdapter());
  }
}

/// Opening Boxes
class OpenBox
{
  OpenBox._();

  Future<void> openBoxes() async {
    await Hive.openBox<FruitEntity>('fruit_entity');
  }
}

/// Keeping Boxes And it's Getters
class PreserveBox
{
  PreserveBox._();
  late Box<FruitEntity> _fruitEntity;

  Future<void> openBoxes() async {
    _fruitEntity = Hive.box<FruitEntity>('fruit_entity');
  }

  Box<FruitEntity> get fruitEntity => _fruitEntity;
}
