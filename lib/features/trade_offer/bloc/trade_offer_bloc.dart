import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/shared/util/validators.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'trade_offer_bloc.freezed.dart';
part 'trade_offer_event.dart';
part 'trade_offer_state.dart';

@lazySingleton
class TradeOfferBloc extends Bloc<TradeOfferEvent, TradeOfferState> {
  final Validators validators;

  TradeOfferBloc(
    this.validators,
  ) : super(TradeOfferState.empty());

  @override
  Stream<TradeOfferState> mapEventToState(TradeOfferEvent event) async* {
    yield* event.map(
      addItemToTrade: (e) async* {
        Map<String, BarterModel> items = state.pickedBarterItem;
        items.putIfAbsent(e.barterModel.itemId, () => e.barterModel);
        yield TradeOfferState.addItem(items, state.isMessageValid);
        yield TradeOfferState.updateDone(items, state.isMessageValid);
      },
      removeItemToTrade: (e) async* {
        Map<String, BarterModel> items = state.pickedBarterItem;
        items.remove(e.barterModel.itemId);
        yield TradeOfferState.removeItem(items, state.isMessageValid);
        yield TradeOfferState.updateDone(items, state.isMessageValid);
      },
      clearItemToTrade: (e) async* {
        Map<String, BarterModel> items = state.pickedBarterItem;
        items.clear();
        yield TradeOfferState.clearItems(items, state.isMessageValid);
        yield TradeOfferState.updateDone(items, state.isMessageValid);
      },
      messageChanged: (e) async* {
        yield state.copyWith(
          isMessageValid:
              validators.isValidTextLengthMoreThanOrEqualToFourChars(e.message),
          isSubmitting: false,
          isSuccess: false,
          isFailure: false,
          info: '',
        );
      },
      submitButtonOfferPressed: (e) async* {},
    );
  }
}
