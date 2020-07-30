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
  Future<AlgoliaQuerySnapshot> getBarterFeeds(String algoliaAppId,
      String algoliaSearchApiKey, String latitude, String longitude) async {
    Algolia algolia = Algolia.init(
      applicationId: algoliaAppId,
      apiKey: algoliaSearchApiKey,
    );

    final aroundLatLng = '$latitude, $longitude';

    print('aroundLatLng = $aroundLatLng');

    ///
    /// Perform Query
    ///
    AlgoliaQuery query = algolia.instance
        .index('barter_index')
        .search('')
        .setAroundLatLng(aroundLatLng)
        .setAroundRadius(5000); //5,000 meters or 5 km

    final data = query.getObjects();

    return data;
  }
}
