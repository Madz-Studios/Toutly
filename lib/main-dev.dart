import 'common-main.dart';
import 'flavors.dart';

void main() async {
  Flavor flavor = Flavor.DEV;

  commonMain(flavor.toString());
}
