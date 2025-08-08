import 'package:equatable/equatable.dart';

class RegisterEntity extends Equatable {
  const RegisterEntity({
    required this.fullName,
    required this.email,
    required this.password,
  });

  final String fullName;
  final String email;
  final String password;

  @override
  List<Object?> get props => [fullName, email, password];
}
