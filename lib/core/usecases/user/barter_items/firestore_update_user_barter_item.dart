import 'package:Toutly/core/repositories/user/barter_item/firestore_barter_item_repository.dart';
import 'package:Toutly/core/usecases/param/barter/use_case_barter_param.dart';
import 'package:Toutly/core/usecases/param/usecase.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FirestoreUpdateUserBarterItemUseCase
    implements UseCaseFirestore<void, UseCaseBarterModelParam> {
  final FirestoreBarterItemRepository firestoreBarterItemRepository;

  FirestoreUpdateUserBarterItemUseCase({this.firestoreBarterItemRepository});

  @override
  Future<void> call(UseCaseBarterModelParam params) async {
    await firestoreBarterItemRepository.updateUserBarterItem(
      barterModel: params.barterModel,
    );
  }
}
