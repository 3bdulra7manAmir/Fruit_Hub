import 'package:firebase_storage/firebase_storage.dart';

class FirebaseStorageService
{
  FirebaseStorageService._();

  static final FirebaseStorageService _instance = FirebaseStorageService._();
  static FirebaseStorageService get instance => _instance;
  
  final FirebaseStorage _storage = FirebaseStorage.instance;
  FirebaseStorage get storage => _storage;
}
