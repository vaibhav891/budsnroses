import 'package:budsnroses/domain/Auth/auth_failure.dart';
import 'package:budsnroses/domain/Auth/i_auth_facade.dart';
import 'package:budsnroses/domain/Auth/user.dart';
import 'package:budsnroses/domain/Auth/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import 'firebase_mapper.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn);

  @override
  Future<Either<AuthFailure, User>> registerWithEmailAndPassword(
      {@required EmailAddress emailAddress,
      @required Password password}) async {
    // check for error
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();

    // register user
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );
      //User user; //=
      final firebaseUser = await _firebaseAuth.currentUser();
      return right(firebaseUser.toDomain());
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, User>> signInWithEmailAndPassword(
      {@required EmailAddress emailAddress,
      @required Password password}) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();

    // register user
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );
      //User user; //=
      final firebaseUser = await _firebaseAuth.currentUser();
      return right(firebaseUser.toDomain());
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_INVALID_EMAIL' || e.code == 'ERROR_WRONG_PASSWORD') {
        return left(const AuthFailure.invalidEmailnPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, User>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.getCredential(
          idToken: googleAuthentication.idToken,
          accessToken: googleAuthentication.accessToken);

      await _firebaseAuth.signInWithCredential(authCredential);
      //User user; //=
      final firebaseUser = await _firebaseAuth.currentUser();
      return right(firebaseUser.toDomain());
    } on PlatformException catch (_) {
      throw const AuthFailure.serverError();
    }
  }

  @override
  Future<void> signOut() async {
    Future.wait([_firebaseAuth.signOut(), _googleSignIn.signOut()]);
  }

  @override
  Future<Option<User>> signedInUser() async {
    final firebaseUser = await _firebaseAuth.currentUser();
    return optionOf(firebaseUser?.toDomain());
  }
}
