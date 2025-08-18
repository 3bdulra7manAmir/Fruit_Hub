import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/entity/login_with_google_entity.dart';

class LoginWithGoogleModel extends LoginWithGoogleEntity {
  const LoginWithGoogleModel({
    required super.id,
    required super.email,
    super.name,
    super.photoUrl,
  });

  factory LoginWithGoogleModel.fromFirebaseUser(User user)
  {
    return LoginWithGoogleModel(
      id: user.uid,
      email: user.email ?? '',
      name: user.displayName,
      photoUrl: user.photoURL,
    );
  }
}
