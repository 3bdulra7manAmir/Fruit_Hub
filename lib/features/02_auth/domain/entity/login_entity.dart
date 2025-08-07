import 'package:equatable/equatable.dart';

class LoginEntity extends Equatable
{
  const LoginEntity({this.userId, this.userEmail, this.userPassword});

  final String? userId;
  final String? userEmail;
  final String? userPassword;
  
  @override
  List<Object?> get props => [userId, userEmail, userPassword];
}