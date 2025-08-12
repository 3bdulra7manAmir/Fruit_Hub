import 'package:equatable/equatable.dart';
import '../../domain/entity/offer_entity.dart';


class OffersModel extends OffersEntity with EquatableMixin {

  factory OffersModel.fromJson(Map<String, dynamic> json) {
    return OffersModel(
      id: json['OfferId'] as String,
      name: json['OfferName'] as String,
      value: (json['OfferValue'] as num).toDouble(),
      imgUrl: json['OfferImg'] as String,
    );
  }
  const OffersModel({
    required this.id,
    required super.name,
    required super.value,
    required super.imgUrl,
  });

  final String id;

  Map<String, dynamic> toJson() => {
        'OfferId': id,
        'OfferName': name,
        'OfferValue': value,
        'OfferImg': imgUrl,
      };

  @override
  List<Object?> get props => [id, name, value, imgUrl];
}
