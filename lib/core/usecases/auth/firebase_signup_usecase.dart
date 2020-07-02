import 'package:Toutly/core/repositories/auth/firebase_auth_user_repository.dart';
import 'package:Toutly/core/usecases/param/usecase.dart';
import 'package:Toutly/core/usecases/param/user/use_case_user_param.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

@lazySingleton
class FirebaseSignUpUseCase
    implements UseCaseFirestore<void, UseCaseUserParamEmailPassword> {
  final FirebaseAuthUserRepository firebaseAuthUserRepository;

  FirebaseSignUpUseCase({
    @required this.firebaseAuthUserRepository,
  });

  @override
  Future<void> call(UseCaseUserParamEmailPassword params) async {
    return await firebaseAuthUserRepository.signUp(
        email: params.email, password: params.password);
  }
}
