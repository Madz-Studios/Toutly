import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/repositories/barter_item/firestore_barter_repository.dart';
import 'package:Toutly/core/usecases/param/barter/use_case_barter_param.dart';
import 'package:Toutly/core/usecases/param/usecase.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FirestoreGetAllLikesBarterItemsUsingUserIdUseCase
    implements UseCaseFirestoreQuery<void, UseCaseUserIdWithItemIdListParam> {
  final FirestoreBarterRepository firestoreBarterRepository;

  FirestoreGetAllLikesBarterItemsUsingUserIdUseCase(
      {this.firestoreBarterRepository});

  @override
  Future<List<BarterModel>> call(UseCaseUserIdWithItemIdListParam params) {
    return firestoreBarterRepository
        .getFutureAllLikesBarterItemsUsingItemIdList(
      params.itemIds,
    );
  }
}
