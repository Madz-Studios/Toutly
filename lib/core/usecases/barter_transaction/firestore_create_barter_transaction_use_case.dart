import 'package:Toutly/core/repositories/barter_transaction/firestore_barter_transaction_repository.dart';
import 'package:Toutly/core/usecases/param/barter_transaction/use_case_barter_transaction_param.dart';
import 'package:Toutly/core/usecases/param/usecase.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FirestoreCreateBarterTransactionUseCase
    implements UseCaseFirestore<void, UseCaseBarterTransactionModelParam> {
  final FirestoreBarterTransactionRepository
      firestoreBarterTransactionRepository;

  FirestoreCreateBarterTransactionUseCase(
      {this.firestoreBarterTransactionRepository});

  @override
  Future<String> call(UseCaseBarterTransactionModelParam params) async {
    return await firestoreBarterTransactionRepository
        .createBarterTransaction(params.barterTransactionModel);
  }
}
