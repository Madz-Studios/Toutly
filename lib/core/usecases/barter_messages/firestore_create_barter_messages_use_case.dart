import 'package:Toutly/core/repositories/barter_messages/firestore_barter_messages_repository.dart';
import 'package:Toutly/core/usecases/param/barter_messages/use_case_barter_messages_param.dart';
import 'package:Toutly/core/usecases/param/usecase.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FirestoreCreateBarterMessagesUseCase
    implements UseCaseFirestore<void, UseCaseBarterMessagesModelParam> {
  final FirestoreBarterMessagesRepository firestoreBarterMessagesRepository;

  FirestoreCreateBarterMessagesUseCase(
      {this.firestoreBarterMessagesRepository});

  @override
  Future<void> call(UseCaseBarterMessagesModelParam params) async {
    await firestoreBarterMessagesRepository.createBarterMessages(
        params.transactionId, params.barterMessageModel);
  }
}
