import 'package:budsnroses/domain/Auth/user.dart';
import 'package:budsnroses/domain/Auth/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension FirebaseUserMapperX on FirebaseUser {
  User toDomain() {
    return User(uid: UniqueId.fromUniqueString(uid));
  }
}
