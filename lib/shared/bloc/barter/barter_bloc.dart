import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/usecases/auth/firebase_get_user_usecase.dart';
import 'package:Toutly/core/usecases/barter/firestore_get_all_barter_items_using_user_id.dart';
import 'package:Toutly/core/usecases/param/barter/use_case_barter_param.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'barter_bloc.freezed.dart';
part 'barter_event.dart';
part 'barter_state.dart';

@lazySingleton
class BarterBloc extends Bloc<BarterEvent, BarterState> {
  final FirebaseGetUserUseCase firebaseGetUserUseCase;

  final FirestoreGetAllBarterItemsUsingUserIdUseCase
      firestoreGetAllBarterItemsUsingUserIdUseCase;

  BarterBloc(
    this.firebaseGetUserUseCase,
    this.firestoreGetAllBarterItemsUsingUserIdUseCase,
  ) : super(BarterState.empty());

  @override
  Stream<BarterState> mapEventToState(BarterEvent event) async* {
    yield* event.map(
      getUserBarterItems: (e) async* {
        try {
          final items = getUserBarterItems(e.userId);
          yield BarterState.success(userBarterItems: items, info: 'Success');
        } on PlatformException catch (platformException) {
          yield BarterState.failure(info: platformException.message);
        }
      },
      initial: (e) async* {},
    );
  }

  Future<List<BarterModel>> getUserBarterItems(String userId) {
    final listings = firestoreGetAllBarterItemsUsingUserIdUseCase.call(
      UseCaseUserIdWithListBarterParam.init(userId),
    );

    return listings;
  }
}
