import 'package:Toutly/core/repositories/local/local_shared_pref_repository.dart';
import 'package:Toutly/core/usecases/param/usecase.dart';
import 'package:Toutly/core/usecases/param/user/use_case_user_param.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LocalSharedPrefPersistUserIdUseCase
    implements UseCaseLocal<void, UseCaseUserParamUserId> {
  final LocalSharedPrefRepository localSharedPrefRepository;

  LocalSharedPrefPersistUserIdUseCase({this.localSharedPrefRepository});

  @override
  void call(UseCaseUserParamUserId params) async {
    localSharedPrefRepository.persistCurrentUserId(params.userId);
  }
}
