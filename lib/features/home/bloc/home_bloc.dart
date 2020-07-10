import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/core/usecases/param/user/use_case_user_param.dart';
import 'package:Toutly/core/usecases/user/firestore_get_user_usecase.dart';
import 'package:algolia/algolia.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final FirestoreGetUserUseCase firestoreGetUserUseCase;
  HomeBloc(
    this.firestoreGetUserUseCase,
  ) : super(HomeState.initial());

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {}

  ///TODO: Put the in a separate Bloc, Search Bloc???
  Future<AlgoliaQuerySnapshot> getBarterFeeds(
      String algoliaAppId, String algoliaSearchApiKey) async {
    Algolia algolia = Algolia.init(
      applicationId: algoliaAppId,
      apiKey: algoliaSearchApiKey,
    );

    ///
    /// Perform Query
    ///
    AlgoliaQuery query = algolia.instance.index('barter_index').search('');

    final data = query.getObjects();

    return data;
  }

  Future<UserModel> getUser(String userId) async {
    final user =
        firestoreGetUserUseCase.call(UseCaseUserParamUserId.init(userId));

    return user;
  }
}
