import 'package:Toutly/core/repositories/local/local_shared_pref_repository.dart';
import 'package:Toutly/core/usecases/param/use_case_no_param.dart';
import 'package:Toutly/core/usecases/param/usecase.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LocalSharedDeleteAllSaveDataUseCase
    implements UseCaseFirestore<void, UseCaseNoParam> {
  final LocalSharedPrefRepository localSharedPrefRepository;

  LocalSharedDeleteAllSaveDataUseCase({this.localSharedPrefRepository});

  @override
  Future<void> call(UseCaseNoParam params) async {
    await localSharedPrefRepository.deleteAllLocalSavedData();
  }
}
