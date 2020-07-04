import 'package:Toutly/core/repositories/local/local_shared_pref_repository.dart';
import 'package:Toutly/core/usecases/param/usecase.dart';
import 'package:Toutly/core/usecases/param/user/use_case_user_param.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LocalSharedPrefPersistUserId
    implements UseCaseFirestore<void, UseCaseUserParamUserId> {
  final LocalSharedPrefRepository localSharedPrefRepository;

  LocalSharedPrefPersistUserId({this.localSharedPrefRepository});

  @override
  Future<void> call(UseCaseUserParamUserId params) async {
    await localSharedPrefRepository.persistCurrentUserEmail(params.userId);
  }
}
