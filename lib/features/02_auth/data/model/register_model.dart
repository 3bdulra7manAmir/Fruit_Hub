import 'package:equatable/equatable.dart';
import '../../domain/entity/register_entity.dart';

class RegisterModel extends RegisterEntity with EquatableMixin {
  const RegisterModel({
    required super.fullName,
    required super.email,
    required super.password,
  });

  factory RegisterModel.fromJson(Map<String, dynamic> json) {
    return RegisterModel(
      fullName: json['fullName'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );
  }

  Map<String, dynamic> toJson() => {
        'fullName': fullName,
        'email': email,
        'password': password,
      };

  @override
  List<Object?> get props => [fullName, email, password];
}
