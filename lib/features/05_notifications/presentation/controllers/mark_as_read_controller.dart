import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/utils/logger/app_logger.dart';

part 'mark_as_read_controller.g.dart';

@riverpod
class MarkAsRead extends _$MarkAsRead
{
  @override
  bool build()
  {
    return true;
  }

  void toggle()
  { 
    state = !state;
    AppLogger.debug('obscure text state is: $state');
  }
}
