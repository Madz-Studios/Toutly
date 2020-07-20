import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/repositories/barter/firestore_barter_repository.dart';
import 'package:Toutly/core/usecases/param/barter/use_case_barter_param.dart';
import 'package:Toutly/core/usecases/param/usecase.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FirestoreGetAllBarterItemsUsingUserIdUseCase
    implements UseCaseFirestoreQuery<void, UseCaseUserIdWithListBarterParam> {
  final FirestoreBarterRepository firestoreBarterRepository;

  FirestoreGetAllBarterItemsUsingUserIdUseCase(
      {this.firestoreBarterRepository});

//  @override
//  Stream<QuerySnapshot> call(UseCaseUserIdWithListBarterParam params) {
//    return firestoreBarterRepository
//        .getAllBarterItemsUsingUserId(params.userId);
//  }

  @override
  Future<List<BarterModel>> call(UseCaseUserIdWithListBarterParam params) {
    return firestoreBarterRepository.getFutureAllBarterItemsUsingUserId(
      params.userId,
    );
  }
}
