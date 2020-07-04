import 'package:Toutly/core/repositories/local/local_shared_pref_repository.dart';
import 'package:Toutly/core/usecases/param/usecase.dart';
import 'package:Toutly/core/usecases/param/user/use_case_user_param.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LocalSharedPrefPersistUserGeoLocationUseCase
    implements UseCaseFirestore<void, UseCaseUserParamGeoLocation> {
  final LocalSharedPrefRepository localSharedPrefRepository;

  LocalSharedPrefPersistUserGeoLocationUseCase(
      {this.localSharedPrefRepository});

  @override
  Future<void> call(UseCaseUserParamGeoLocation params) async {
    await localSharedPrefRepository.persistCurrentUserGeoLocation(
        params.longitude, params.latitude);
  }
}
