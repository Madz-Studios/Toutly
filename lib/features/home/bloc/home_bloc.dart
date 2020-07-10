import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/core/usecases/param/user/use_case_user_param.dart';
import 'package:Toutly/core/usecases/user/firestore_get_user_usecase.dart';
import 'package:algolia/algolia.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final RemoteConfig remoteConfig;
  final FirestoreGetUserUseCase firestoreGetUserUseCase;
  HomeBloc(
    this.remoteConfig,
    this.firestoreGetUserUseCase,
  ) : super(HomeState.initial());

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {}

  Future<AlgoliaQuerySnapshot> getBarterFeeds() async {
    await remoteConfig.fetch();
    await remoteConfig.activateFetched();

    String algoliaAppId = remoteConfig.getString('algolia_app_id');
    String algoliaSearchApiKey =
        remoteConfig.getString('algolia_search_api_key');
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
