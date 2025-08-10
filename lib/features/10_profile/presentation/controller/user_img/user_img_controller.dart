// ignore_for_file: unused_local_variable

import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../../../core/services/database/firebase/firebase_user_img_store.dart';

part 'user_img_controller.g.dart';

@riverpod
Future<String?> userImage(Ref ref) async {
  return await FirebaseUserImgStore().fetchUserImage(fromFirestore: true);
}

@riverpod
Future<void> userImageUpload(Ref ref, File imageFile) async {
  final url = await FirebaseUserImgStore().uploadUserImage(imageFile: imageFile);
  ref.invalidate(userImageProvider);
}
