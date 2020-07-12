import 'package:Toutly/core/usecases/auth/firebase_get_user_usecase.dart';
import 'package:Toutly/core/usecases/param/use_case_no_param.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

@lazySingleton
class UserBloc extends Bloc<UserEvent, UserState> {
  final FirebaseGetUserUseCase firebaseGetUserUseCase;

  UserBloc(
    this.firebaseGetUserUseCase,
  ) : super(UserState.init());

  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    yield* event.map(
      initial: (e) async* {},
      loadCurrentFirebaseUser: (e) async* {
        final firebaseUser =
            await firebaseGetUserUseCase.call(UseCaseNoParam.init());

        yield UserState.setCurrentFirebaseUSer(firebaseUser);
      },
    );
  }
}
