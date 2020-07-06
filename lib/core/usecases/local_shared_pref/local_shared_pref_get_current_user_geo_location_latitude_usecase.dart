import 'package:Toutly/core/repositories/local/local_shared_pref_repository.dart';
import 'package:Toutly/core/usecases/param/use_case_no_param.dart';
import 'package:Toutly/core/usecases/param/usecase.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LocalSharedPrefGetCurrentUserGeoLocationLatitudeUseCase
    implements UseCaseLocal<void, UseCaseNoParam> {
  final LocalSharedPrefRepository localSharedPrefRepository;

  LocalSharedPrefGetCurrentUserGeoLocationLatitudeUseCase(
      {this.localSharedPrefRepository});

  @override
  double call(UseCaseNoParam params) {
    return localSharedPrefRepository.getCurrentUserGeoLocationLatitude();
  }
}
