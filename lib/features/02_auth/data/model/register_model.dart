import 'package:equatable/equatable.dart';

class RegisterModel extends Equatable
{
  const RegisterModel({this.userFullName, this.userEmail, this.userPassword});

  final String? userFullName;
  final String? userEmail;
  final String? userPassword;
  
  @override
  List<Object?> get props => [userFullName, userEmail, userPassword];
}