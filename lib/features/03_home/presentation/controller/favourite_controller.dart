import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/utils/logger/app_logger.dart';

part 'favourite_controller.g.dart';

@riverpod
class Favourite extends _$Favourite {
  /// State equal a group of fruitIds Saved in Firebase
  @override
  Future<Set<String>> build() async {
    final uid = FirebaseAuth.instance.currentUser?.uid;
    if (uid == null) return {};

    final snapshot = await FirebaseFirestore.instance
        .collection('Wish_List')
        .doc(uid)
        .collection('WishList_Products')
        .get();

    final ids = snapshot.docs.map((doc) {
    final data = doc.data();
    return data['fruitId'] as String? ?? doc.id;}).toSet();

    AppLogger.debug('Initial favourite items from Firebase: $ids');
    return ids;
  }

  /// Add or Remove Favourite Product
  Future<void> toggleFavourite(String fruitId, fruitName) async {
    final uid = FirebaseAuth.instance.currentUser?.uid;
    if (uid == null) return;

    final userFavRef = FirebaseFirestore.instance
        .collection('Wish_List')
        .doc(uid)
        .collection('WishList_Products')
        .doc(fruitId);

    final currentState = state.value ?? {};

    if (currentState.contains(fruitId)) {
      // If it is in there Delete it
      await userFavRef.delete();
      state = AsyncData({...currentState}..remove(fruitId));
      AppLogger.debug('Removed $fruitId from favourites');
    } else {
      // if it is not Add it
      await userFavRef.set({
        'fruitId': fruitId,
        'fruitName': fruitName,
        'createdAt': FieldValue.serverTimestamp(),
      });
      state = AsyncData({...currentState, fruitId});
      AppLogger.debug('Added $fruitId to favourites');
    }
  }

  Future<void> removeFromFavourite(String fruitId) async {
  final uid = FirebaseAuth.instance.currentUser?.uid;
    
    if (uid == null) return;
    final userFavRef = FirebaseFirestore.instance
        .collection('Wish_List')
        .doc(uid)
        .collection('WishList_Products')
        .doc(fruitId);

    final currentState = state.value ?? {};
    if (currentState.contains(fruitId)) {
      await userFavRef.delete();
      state = AsyncData({...currentState}..remove(fruitId));
      AppLogger.debug('Removed $fruitId from favourites (FavouriteWidget)');
    }
  }


  /// Is Product is currently Facourited?
  bool isFavourite(String fruitId) {
    return state.value?.contains(fruitId) ?? false;
  }
}
