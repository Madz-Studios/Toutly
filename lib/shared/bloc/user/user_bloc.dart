import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/core/usecases/auth/firebase_get_user_usecase.dart';
import 'package:Toutly/core/usecases/param/use_case_no_param.dart';
import 'package:Toutly/core/usecases/param/user/use_case_user_param.dart';
import 'package:Toutly/core/usecases/user/firestore_get_user_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

@lazySingleton
class UserBloc extends Bloc<UserEvent, UserState> {
  final FirebaseGetUserUseCase firebaseGetUserUseCase;
  final FirestoreGetUserUseCase firestoreGetUserUseCase;

  UserBloc(
    this.firebaseGetUserUseCase,
    this.firestoreGetUserUseCase,
  ) : super(UserState.init());

  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    yield* event.map(
      initial: (e) async* {},
      getCurrentLoggedInUser: (e) async* {
        final firebaseUser =
            await firebaseGetUserUseCase.call(UseCaseNoParam.init());

        final currentUser = await firestoreGetUserUseCase.call(
          UseCaseUserParamUserId.init(firebaseUser.uid),
        );

        yield UserState.setCurrentLoggedInUser(currentUser);
      },
    );
  }

  Future<UserModel> getUser(String userId) async {
    final user =
        firestoreGetUserUseCase.call(UseCaseUserParamUserId.init(userId));

    return user;
  }
}
