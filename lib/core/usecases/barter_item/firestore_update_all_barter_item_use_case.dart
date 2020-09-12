import 'package:Toutly/core/repositories/barter_item/firestore_barter_repository.dart';
import 'package:Toutly/core/usecases/param/usecase.dart';
import 'package:Toutly/core/usecases/param/user/use_case_user_param.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FirestoreUpdateAllBarterItemUseCase
    implements UseCaseFirestore<void, UseCaseUserParamUserModel> {
  final FirestoreBarterRepository firestoreBarterRepository;

  FirestoreUpdateAllBarterItemUseCase({this.firestoreBarterRepository});

  @override
  Future<void> call(UseCaseUserParamUserModel params) async {
    await firestoreBarterRepository
        .updateAllBarterItemOfCurrentUser(params.userModel);
  }
}
