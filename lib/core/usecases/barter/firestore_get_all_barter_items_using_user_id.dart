import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/repositories/barter/firestore_barter_repository.dart';
import 'package:Toutly/core/usecases/param/barter/use_case_barter_param.dart';
import 'package:Toutly/core/usecases/param/usecase.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FirestoreGetAllBarterItemsUsingUserIdUseCase
    implements UseCaseFirestore<void, UseCaseUserIdParam> {
  final FirestoreBarterRepository firestoreBarterRepository;

  FirestoreGetAllBarterItemsUsingUserIdUseCase(
      {this.firestoreBarterRepository});

  @override
  Future<List<BarterModel>> call(UseCaseUserIdParam params) async {
    return await firestoreBarterRepository.getAllBarterItemsUsingUserId(
      userId: params.userId,
    );
  }
}
