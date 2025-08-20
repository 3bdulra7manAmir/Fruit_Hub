import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/utils/logger/app_logger.dart';

part 'resend_email_controller.g.dart';

@riverpod
class ResendEmail extends _$ResendEmail
{
  @override
  bool build()
  {
    AppLogger.debug('inital State is: False');
    return false;
  }

  void toggle()
  { 
    state = !state;
    AppLogger.debug('resend email state is: $state');
  }
}
