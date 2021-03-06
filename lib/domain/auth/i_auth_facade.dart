import 'package:dartz/dartz.dart';

import 'app_user.dart';
import 'auth_failure.dart';
import 'value_object.dart';

abstract class IAuthFacade {
  Future<Option<AppUser>> getSignedInUser();

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<void> signOut();
}