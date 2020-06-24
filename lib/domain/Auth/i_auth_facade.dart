import 'package:budsnroses/domain/Auth/auth_failure.dart';
import 'package:budsnroses/domain/Auth/user.dart';
import 'package:budsnroses/domain/Auth/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

abstract class IAuthFacade {
  Future<Option<User>> signedInUser();

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password
  });

  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<void> signOut();

}