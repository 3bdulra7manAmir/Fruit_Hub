// import 'package:equatable/equatable.dart';

// import '../../domain/entity/health_and_review_entity.dart';


// class FruitHealthModel extends FruitHealthEntity with EquatableMixin
// {
//   const FruitHealthModel({
//     required super.fruitId,
//     required super.cardImg,
//     super.sideTitle,
//     required super.subtitle,
//     required super.title,
//   });

//   factory FruitHealthModel.fromJson(Map<String, dynamic> json)
//   {
//     return FruitHealthModel(
//       fruitId: json['InfoId'] as String,
//       cardImg: json['CardImg'] as String,
//       sideTitle: json['SideTitle'] ?? '',
//       subtitle: json['Subtitle'] as String,
//       title: json['Title'] as String,
//     );
//   }

//   Map<String, dynamic> toJson()
//   {
//     return
//     {
//       'InfoId': fruitId,
//       'CardImg': cardImg,
//       'SideTitle': sideTitle,
//       'Subtitle': subtitle,
//       'Title': title,
//     };
//   }
  
//   @override
//   List<Object?> get props => [cardImg, sideTitle, subtitle, title];
// }
