// import 'dart:math';
// import 'package:cloud_firestore/cloud_firestore.dart';

// import 'intsance/firebase_auth.dart';
// import 'intsance/firebase_fire_store.dart';

// class FirebaseForgetPassword
// {
//   FirebaseForgetPassword._internal();
//   factory FirebaseForgetPassword() => _instance;
//   static final FirebaseForgetPassword _instance = FirebaseForgetPassword._internal();

//   /// [Generate 4 Digits Code]
//   String _generateOtp()
//   {
//     final random = Random();
//     return (1000 + random.nextInt(9000)).toString();
//   }


//   /// [Send OTP for the Saved Email]
//   Future<void> sendOtpToEmail() async
//   {
//     if (FirebaseAuthService.instance.auth.currentUser == null) throw Exception('User not logged in');

//     // [Calling the Cloud Store function that will trigger or send the OTG code to User's Email...]
//     await FirebaseFireStoreService.instance.firestore.collection('user_otps').doc(FirebaseAuthService.instance.auth.currentUser?.uid).set({
//       'otp': _generateOtp(), 'email': FirebaseAuthService.instance.auth.currentUser?.email,
//       'createdAt': FieldValue.serverTimestamp(), 'expiresAt': DateTime.now().add(const Duration(minutes: 15)),
//     });
//   }

//   /// [Verifying the OTP ... The same Sent Code?]
//   Future<bool> verifyOtp(String enteredOtp) async
//   {
//     if (FirebaseAuthService.instance.auth.currentUser == null) throw Exception('User not logged in');

//     final doc = await FirebaseFireStoreService.instance.firestore.collection('user_otps').doc(FirebaseAuthService.instance.auth.currentUser?.uid).get();
//     if (!doc.exists) return false;

//     final data = doc.data();
//     final storedOtp = data?['otp'];
//     final expiresAt = (data?['expiresAt'] as Timestamp).toDate();

//     if (DateTime.now().isAfter(expiresAt)) return false;
//     return storedOtp == enteredOtp;
//   }
// }
