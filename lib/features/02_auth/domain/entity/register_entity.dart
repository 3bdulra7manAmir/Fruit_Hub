import 'package:equatable/equatable.dart';

class RegisterEntity extends Equatable
{
  const RegisterEntity({this.userFullName, this.userEmail, this.userPassword});

  final String? userFullName;
  final String? userEmail;
  final String? userPassword;
  
  @override
  List<Object?> get props => [userFullName, userEmail, userPassword];
}