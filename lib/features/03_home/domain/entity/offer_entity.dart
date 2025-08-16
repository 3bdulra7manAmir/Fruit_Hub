import 'package:equatable/equatable.dart';

class OffersEntity extends Equatable
{

  const OffersEntity({
    required this.name,
    required this.value,
    required this.imgUrl,
  });
  final String name;
  final double value;
  final String imgUrl;

  @override
  List<Object?> get props => [name, value, imgUrl];
}
