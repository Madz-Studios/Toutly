//import 'package:Toutly/core/models/barter/barter_model.dart';
//import 'package:Toutly/core/usecases/auth/firebase_get_user_usecase.dart';
//import 'package:Toutly/core/usecases/barter_item/firestore_get_all_barter_items_using_user_id.dart';
//import 'package:Toutly/core/usecases/barter_item/firestore_get_all_likes_barter_items_using_user_id.dart';
//import 'package:Toutly/core/usecases/param/barter/use_case_barter_param.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:flutter/services.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:freezed_annotation/freezed_annotation.dart';
//import 'package:injectable/injectable.dart';
//
//part 'barter_bloc.freezed.dart';
//part 'barter_event.dart';
//part 'barter_state.dart';
//
//@lazySingleton
//class BarterBloc extends Bloc<BarterEvent, BarterState> {
//  final FirebaseGetUserUseCase firebaseGetUserUseCase;
//
//  final FirestoreGetAllBarterItemsUsingUserIdUseCase
//      firestoreGetAllBarterItemsUsingUserIdUseCase;
//
//  final FirestoreGetAllLikesBarterItemsUsingUserIdUseCase
//      firestoreGetAllLikesBarterItemsUsingUserIdUseCase;
//
//  BarterBloc(
//    this.firebaseGetUserUseCase,
//    this.firestoreGetAllBarterItemsUsingUserIdUseCase,
//    this.firestoreGetAllLikesBarterItemsUsingUserIdUseCase,
//  ) : super(BarterState.empty());
//
//  @override
//  Stream<BarterState> mapEventToState(BarterEvent event) async* {
//    yield* event.map(
//      getAllUserBarterItems: (e) async* {
//        yield BarterState.loading();
//        try {
//          final items = getUserBarterItems(e.userId);
//          yield BarterState.success(userBarterItems: items, info: 'Success');
//        } on PlatformException catch (platformException) {
//          yield BarterState.failure(info: platformException.message);
//        }
//      },
//      initial: (e) async* {},
//    );
//  }
//
//  Stream<QuerySnapshot> getUserBarterItems(String userId) {
//    final listings = firestoreGetAllBarterItemsUsingUserIdUseCase.call(
//      UseCaseUserIdParam.init(userId: userId),
//    );
//
//    return listings;
//  }
//
//  Future<List<BarterModel>> getAllUserFavouriteBarterItems(
//      List<String> itemIds) {
//    final listings = firestoreGetAllLikesBarterItemsUsingUserIdUseCase.call(
//      UseCaseUserIdWithItemIdListParam.init(itemIds),
//    );
//
//    return listings;
//  }
//}
