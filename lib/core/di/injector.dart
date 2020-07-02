import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injector.iconfig.dart';

final getIt = GetIt.I;

@injectableInit
Future<void> configureDependencies() => $initGetIt(getIt);
