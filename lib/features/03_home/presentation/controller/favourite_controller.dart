import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/utils/logger/app_logger.dart';

part 'favourite_controller.g.dart';

@riverpod
class Favourite extends _$Favourite {
  /// الحالة = مجموعة من الـ fruitIds المحفوظة في الـ Firebase
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

  /// إضافة أو إزالة المنتج من المفضلة
  Future<void> toggleFavourite(String fruitId) async {
    final uid = FirebaseAuth.instance.currentUser?.uid;
    if (uid == null) return;

    final userFavRef = FirebaseFirestore.instance
        .collection('Wish_List')
        .doc(uid)
        .collection('WishList_Products')
        .doc(fruitId);

    final currentState = state.value ?? {};

    if (currentState.contains(fruitId)) {
      // 🔴 لو موجود → احذف
      await userFavRef.delete();
      state = AsyncData({...currentState}..remove(fruitId));
      AppLogger.debug('Removed $fruitId from favourites');
    } else {
      // 🟢 لو مش موجود → أضف
      await userFavRef.set({
        'fruitId': fruitId,
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


  /// هل المنتج مفضل حاليًا؟
  bool isFavourite(String fruitId) {
    return state.value?.contains(fruitId) ?? false;
  }
}
