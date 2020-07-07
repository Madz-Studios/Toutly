import 'package:Toutly/core/repositories/barter/firestore_barter_repository.dart';
import 'package:Toutly/core/usecases/param/barter/use_case_barter_param.dart';
import 'package:Toutly/core/usecases/param/usecase.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FirestoreDeleteBarterItemUseCase
    implements UseCaseFirestore<void, UseCaseBarterModelParam> {
  final FirestoreBarterRepository firestoreBarterRepository;

  FirestoreDeleteBarterItemUseCase({this.firestoreBarterRepository});

  @override
  Future<void> call(UseCaseBarterModelParam params) async {
    await firestoreBarterRepository.deleteBarterItem(params.barterModel);
  }
}
