import 'dart:developer';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_img_picker.g.dart';

@riverpod
Future<XFile?> pickUserImage(Ref ref) async
{
  final ImagePicker picker = ImagePicker();
  final XFile? pickedImage = await picker.pickImage(source: ImageSource.gallery, imageQuality: 100,);
  if (pickedImage != null)
  {
    log('Picked image path: ${pickedImage.path}');
  }
  else
  {
    log('No image selected.');
  }
  return pickedImage;
}
