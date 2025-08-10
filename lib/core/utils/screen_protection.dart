// import 'dart:developer';

// import 'package:screen_protector/screen_protector.dart';

// class ScreenProtection {
//   static Future<void> enable() async {
//     await ScreenProtector.preventScreenshotOn();

//     // iOS only
//     ScreenProtector.addListener(
//       () => log('📸 Screenshot detected!'),
//       (isRecording) => log('🎥 Recording: $isRecording'),
//     );
//   }

//   static Future<void> disable() async {
//     await ScreenProtector.preventScreenshotOff();
//     ScreenProtector.removeListener();
//   }
// }
