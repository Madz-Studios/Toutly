import 'package:Toutly/core/repositories/user/barter_item/firestore_barter_item_repository.dart';
import 'package:Toutly/core/usecases/param/barter/use_case_barter_param.dart';
import 'package:Toutly/core/usecases/param/usecase.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FirestoreCreateUserBarterItemUseCase
    implements UseCaseFirestore<void, UseCaseBarterModelParam> {
  final FirestoreBarterItemRepository firestoreBarterItemRepository;

  FirestoreCreateUserBarterItemUseCase({this.firestoreBarterItemRepository});

  @override
  Future<void> call(UseCaseBarterModelParam params) async {
    await firestoreBarterItemRepository.createUserBarterItem(
      barterModel: params.barterModel,
    );
  }
}
