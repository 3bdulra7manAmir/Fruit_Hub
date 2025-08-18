import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/utils/logger/app_logger.dart';

part 'favourite_controller.g.dart';

@riverpod
class FavouriteImg extends _$FavouriteImg
{
  @override
  bool build()
  {
    const initialValue = false;
    AppLogger.debug('Initial Favourit State: $initialValue');
    return initialValue;
  }

  void toggle()
  {
    state = !state;
    AppLogger.debug('Favourit Toggled => $state');
  }
}
