import 'package:logger/logger.dart';

class AppLogger {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(
      lineLength: 100,
      dateTimeFormat: DateTimeFormat.dateAndTime,
    ),
  );

  // --------- General Logs ----------
  static void info(String message)
  {
    _logger.i(message);
  }

  static void debug(String message)
  {
    _logger.d(message);
  }

  static void warning(String message)
  {
    _logger.w(message);
  }

  // static void error(String message, [error, StackTrace? stackTrace])
  // {
  //   _logger.e(message, error, stackTrace);
  // }

  // --------- Firebase Logs ----------
  static void firebaseAction(String action, {Map<String, dynamic>? data})
  {
    _logger.i('Firebase Action: $action\nData: $data');
  }

  static void firebaseError(String action, error)
  {
    _logger.e('Firebase Error: $action\n$error');
  }
}
