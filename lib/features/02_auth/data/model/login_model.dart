import 'package:equatable/equatable.dart';
import '../../domain/entity/login_entity.dart';

class LoginModel extends LoginEntity with EquatableMixin {
  const LoginModel({
    required super.email,
    required super.password,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      email: json['email'] as String,
      password: json['password'] as String,
    );
  }

  Map<String, dynamic> toJson() => {
        'email': email,
        'password': password,
      };

  @override
  List<Object?> get props => [email, password];
}
