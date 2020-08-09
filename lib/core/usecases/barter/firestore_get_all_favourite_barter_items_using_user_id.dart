import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/repositories/barter/firestore_barter_repository.dart';
import 'package:Toutly/core/usecases/param/barter/use_case_barter_param.dart';
import 'package:Toutly/core/usecases/param/usecase.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FirestoreGetAllFavouriteBarterItemsUsingUserIdUseCase
    implements UseCaseFirestoreQuery<void, UseCaseUserIdWithItemIdListParam> {
  final FirestoreBarterRepository firestoreBarterRepository;

  FirestoreGetAllFavouriteBarterItemsUsingUserIdUseCase(
      {this.firestoreBarterRepository});

  @override
  Future<List<BarterModel>> call(UseCaseUserIdWithItemIdListParam params) {
    return firestoreBarterRepository
        .getFutureAllFavouriteBarterItemsUsingItemIdList(
      params.itemIds,
    );
  }
}
