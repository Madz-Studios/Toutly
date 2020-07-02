import 'common-main.dart';
import 'flavors.dart';

void main() async {
  Flavor flavor = Flavor.PROD;

  commonMain(flavor.toString());
}
