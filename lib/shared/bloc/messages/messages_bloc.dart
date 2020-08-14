import 'package:Toutly/core/models/barter_message/barter_message_model.dart';
import 'package:Toutly/core/usecases/barter_messages/firestore_get_all_user_barter_messages_use_case.dart';
import 'package:Toutly/core/usecases/barter_messages/firestore_get_all_user_offer_messages_use_case.dart';
import 'package:Toutly/core/usecases/param/barter_messages/use_case_barter_messages_param.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'messages_bloc.freezed.dart';
part 'messages_event.dart';
part 'messages_state.dart';

@lazySingleton
class MessagesBloc extends Bloc<MessagesEvent, MessagesState> {
  FirestoreGetAllBarterMessagesUseCase firestoreGetAllBarterMessagesUseCase;
  FirestoreGetAllOfferMessagesUseCase firestoreGetAllOfferMessagesUseCase;

  MessagesBloc(
    this.firestoreGetAllBarterMessagesUseCase,
    this.firestoreGetAllOfferMessagesUseCase,
  ) : super(MessagesState.empty());

  @override
  Stream<MessagesState> mapEventToState(MessagesEvent event) async* {
    yield* event.map(
      init: (e) async* {},
      getAllUserMessages: (e) async* {
//        yield MessagesState.loading();
//        try {
//          firestoreGetAllBarterMessagesUseCase.call(
//            UseCaseAllUserMessagesWithUserIdParam.init(userId: e.userId),
//          );
//        } on PlatformException catch (platformException) {
//          yield MessagesState.failure(info: platformException.message);
//        }
      },
    );
  }

  Stream<QuerySnapshot> getAllUserBarterMessages(String userId) {
    final snapshots = firestoreGetAllBarterMessagesUseCase.call(
      UseCaseAllUserMessagesWithUserIdParam.init(
        userId: userId,
      ),
    );

    return snapshots;
  }

  Stream<QuerySnapshot> getAllUserOfferMessages(String userId) {
    final snapshots = firestoreGetAllOfferMessagesUseCase.call(
      UseCaseAllUserMessagesWithUserIdParam.init(
        userId: userId,
      ),
    );

    return snapshots;
  }
}
