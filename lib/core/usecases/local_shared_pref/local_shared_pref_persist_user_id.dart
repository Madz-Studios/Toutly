import 'package:Toutly/core/repositories/local/local_shared_pref_repository.dart';
import 'package:Toutly/core/usecases/param/usecase.dart';
import 'package:Toutly/core/usecases/param/user/use_case_user_param.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LocalSharedPrefPersistUserId
    implements UseCaseFirestore<void, UseCaseUserParamUid> {
  final LocalSharedPrefRepository localSharedPrefRepository;

  LocalSharedPrefPersistUserId({this.localSharedPrefRepository});

  @override
  Future<void> call(UseCaseUserParamUid params) async {
    await localSharedPrefRepository.persistCurrentUserEmail(params.uid);
  }
}
