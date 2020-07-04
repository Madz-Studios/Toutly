import 'package:Toutly/core/repositories/local/local_shared_pref_repository.dart';
import 'package:Toutly/core/usecases/param/usecase.dart';
import 'package:Toutly/core/usecases/param/user/use_case_user_param.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LocalSharedPrefGetCurrentUserEmailUseCase
    implements UseCaseFirestore<void, UseCaseUserParamUserId> {
  final LocalSharedPrefRepository localSharedPrefRepository;

  LocalSharedPrefGetCurrentUserEmailUseCase({this.localSharedPrefRepository});

  @override
  Future<String> call(UseCaseUserParamUserId params) async {
    return localSharedPrefRepository.getCurrentUserEmail();
  }
}
