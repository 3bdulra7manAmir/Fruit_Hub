import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/utils/logger/app_logger.dart';

part 'user_img_picker.g.dart';

@riverpod
Future<XFile?> userImgPicker(Ref ref) async
{
  final ImagePicker picker = ImagePicker();
  final XFile? pickedImage = await picker.pickImage(source: ImageSource.gallery, imageQuality: 100,);
  if (pickedImage != null)
  {
    AppLogger.debug('Picked image path: ${pickedImage.path}');
  }
  else
  {
    AppLogger.debug('No image selected.');
  }
  return pickedImage;
}
