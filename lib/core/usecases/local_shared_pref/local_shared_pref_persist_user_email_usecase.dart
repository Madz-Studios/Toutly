import 'package:Toutly/core/repositories/local/local_shared_pref_repository.dart';
import 'package:Toutly/core/usecases/param/usecase.dart';
import 'package:Toutly/core/usecases/param/user/use_case_user_param.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LocalSharedPrefPersistUserEmailUseCase
    implements UseCaseLocal<void, UseCaseUserParamEmail> {
  final LocalSharedPrefRepository localSharedPrefRepository;

  LocalSharedPrefPersistUserEmailUseCase({this.localSharedPrefRepository});

  @override
  void call(UseCaseUserParamEmail params) {
    localSharedPrefRepository.persistCurrentUserEmail(params.email);
  }
}
