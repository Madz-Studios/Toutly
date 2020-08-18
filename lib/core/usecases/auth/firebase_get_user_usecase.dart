import 'package:Toutly/core/repositories/auth/firebase_auth_user_repository.dart';
import 'package:Toutly/core/usecases/param/use_case_no_param.dart';
import 'package:Toutly/core/usecases/param/usecase.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

@lazySingleton
class FirebaseGetUserUseCase implements UseCaseFirebase<User, UseCaseNoParam> {
  final FirebaseAuthUserRepository firebaseAuthUserRepository;

  FirebaseGetUserUseCase({
    @required this.firebaseAuthUserRepository,
  });

  @override
  User call(UseCaseNoParam params) {
    return firebaseAuthUserRepository.getUser();
  }
}
