import 'package:Toutly/core/repositories/local/local_shared_pref_repository.dart';
import 'package:Toutly/core/usecases/param/use_case_no_param.dart';
import 'package:Toutly/core/usecases/param/usecase.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LocalSharedPrefGetCurrentUserEmailUseCase
    implements UseCaseLocal<void, UseCaseNoParam> {
  final LocalSharedPrefRepository localSharedPrefRepository;

  LocalSharedPrefGetCurrentUserEmailUseCase({this.localSharedPrefRepository});

  @override
  String call(UseCaseNoParam params) {
    return localSharedPrefRepository.getCurrentUserEmail();
  }
}
