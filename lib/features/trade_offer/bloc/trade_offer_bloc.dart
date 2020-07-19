import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'trade_offer_bloc.freezed.dart';
part 'trade_offer_event.dart';
part 'trade_offer_state.dart';

@lazySingleton
class TradeOfferBloc extends Bloc<TradeOfferEvent, TradeOfferState> {
  TradeOfferBloc() : super(TradeOfferState.empty());

  @override
  Stream<TradeOfferState> mapEventToState(TradeOfferEvent event) async* {
    event.map(
        initial: (e) async {},
        addItemToTrade: (e) async {
          state.pickedBarterItem
              .putIfAbsent(e.barterModel.itemId, () => e.barterModel);
          print('length = ${state.pickedBarterItem.length}');
        },
        removeItemToTrade: (e) async {
          state.pickedBarterItem.remove(e.barterModel.itemId);
          print('length = ${state.pickedBarterItem.length}');
        },
        clearItemToTrade: (e) async {
          state.pickedBarterItem.clear();
        },
        submitButtonOfferPressed: (e) async {});
  }
}
