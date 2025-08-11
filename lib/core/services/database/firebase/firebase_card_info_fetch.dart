// import 'package:cloud_firestore/cloud_firestore.dart';


// class FirebaseCardInfo
// {

//   factory FirebaseCardInfo.fromMap(Map<String, dynamic> data)
//   {
//     return FirebaseCardInfo(
//       productId: data['ProductId'] is int ? data['ProductId'] : int.tryParse(data['ProductId'].toString()) ?? 0,
//       productName: data['ProductName'] ?? '',
//       productImg: data['ProductImg'] ?? '',
//       productPrice: data['ProductPrice'] is num ? (data['ProductPrice'] as num).toDouble() : double.tryParse(data['ProductPrice'].toString()) ?? 0.0,
//     );
//   }

//   FirebaseCardInfo({
//     required this.productId,
//     required this.productName,
//     required this.productImg,
//     required this.productPrice,
//   });
//   final int productId;
//   final String productName;
//   final String productImg;
//   final double productPrice;
// }

// class FirebaseCardInfoFetch
// {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   Future<List<FirebaseCardInfo>> fetchCards() async
//   {
//     try
//     {
//       final snapshot = await _firestore.collection('main_card').get();
//       if (snapshot.docs.isEmpty)
//       {
//         return [];
//       }

//       return snapshot.docs.map((doc) => FirebaseCardInfo.fromMap(doc.data()))
//         .toList();
//     }
//     catch (e)
//     {
//       throw Exception('Error fetching cards: $e');
//     }
//   }
// }
