import 'package:equatable/equatable.dart';

class LoginModel extends Equatable
{
  const LoginModel({this.userId, this.userEmail, this.userPassword});

  final String? userId;
  final String? userEmail;
  final String? userPassword;
  
  @override
  List<Object?> get props => [userId, userEmail, userPassword];
}