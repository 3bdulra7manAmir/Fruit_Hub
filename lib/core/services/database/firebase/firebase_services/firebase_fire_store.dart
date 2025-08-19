import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseFireStoreService
{
  FirebaseFireStoreService._();
  
  static final FirebaseFireStoreService _instance = FirebaseFireStoreService._();
  static FirebaseFireStoreService get instance => _instance;

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  FirebaseFirestore get firestore => _firestore;
}
