import 'package:Toutly/core/repositories/auth/firebase_auth_user_repository.dart';
import 'package:Toutly/core/usecases/param/use_case_no_param.dart';
import 'package:Toutly/core/usecases/param/usecase.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

@lazySingleton
class FirebaseSignedInWithAppleUserUseCase
    implements UseCaseFirestore<void, UseCaseNoParam> {
  final FirebaseAuthUserRepository firebaseAuthUserRepository;

  FirebaseSignedInWithAppleUserUseCase({
    @required this.firebaseAuthUserRepository,
  });

  @override
  Future<void> call(UseCaseNoParam params) async {
    return await firebaseAuthUserRepository.signInWithApple();
  }
}
