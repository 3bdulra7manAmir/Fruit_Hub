// ignore_for_file: unused_local_variable
import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../user_img_fetch.dart';
import '../user_img_store.dart';


part 'user_img_controller.g.dart';


@Riverpod(keepAlive: false)
Future<String?> userImgFetch(Ref ref) async {
  return await FirebaseUserImgFetch().fetchUserImg(fromFirestore: true);
}


@riverpod
Future<void> userImgUpload(Ref ref, File imageFile) async {
  final url = await FirebaseUserImgStore().uploadUserImg(imageFile: imageFile);
  ref.invalidate(userImgFetchProvider);
}
