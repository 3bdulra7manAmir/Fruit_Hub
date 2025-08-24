import 'package:hive_flutter/adapters.dart';

import '../../../utils/logger/app_logger.dart';
import 'hive_boxes.dart';

class HiveDatabase
{
  HiveDatabase._();
  static HiveDatabase? _instance;

  static HiveDatabase get instance
  {
    _instance ??= HiveDatabase._();
    return _instance!;
  }

  Future<void> init() async
  {
    /// init Hive
    await Hive.initFlutter();

    /// Register Adapters
    HiveBoxes.register.registerAdapters();

    /// Open Boxes
    await HiveBoxes.open.openBoxes();

    /// Store boxes In Preserve
    await HiveBoxes.preserve.openBoxes();

    AppLogger.debug('Hive Has been initializated...');
  }

  Future<void> get close async => await Hive.close();
}
