import 'package:Toutly/core/cubits/user/other_user/other_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/features/navigation/bloc/navigation_bloc.dart';
import 'package:Toutly/features/trade_offer/bloc/trade_offer_bloc.dart';
import 'package:Toutly/features/trade_offer/widgets/trade_barter_item_card.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/buttons/action_button.dart';
import 'package:Toutly/shared/widgets/profile_with_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'select_item_to_trade.dart';
import 'trade_message_area.dart';

class TradeOfferForm extends StatefulWidget {
  @override
  _TradeOfferFormState createState() => _TradeOfferFormState();
}

class _TradeOfferFormState extends State<TradeOfferForm> {
  final _navBloc = getIt<NavigationBloc>();
  final _tradeOfferBloc = getIt<TradeOfferBloc>();
  final _messageController = TextEditingController();

  bool isSignInButtonEnabled(TradeOfferState state) {
    return state.isTradeOfferFormValid &&
        state.isMessageValid &&
        !state.isSubmitting;
  }

  _onFormSubmitted() {
    if (_messageController.text.isNotEmpty) {
      _tradeOfferBloc.add(
        TradeOfferEvent.submitButtonOfferPressed(
          message: _messageController.text,
        ),
      );
    }
  }

  void _onMessageChanged() {
    _tradeOfferBloc.add(
      TradeOfferEvent.messageChanged(message: _messageController.text),
    );
  }

  @override
  void initState() {
    super.initState();

    _messageController.addListener(_onMessageChanged);
  }

  @override
  void dispose() {
    super.dispose();
    _messageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return BlocConsumer<TradeOfferBloc, TradeOfferState>(
      listener: (context, state) {
        if (state.isFailure) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text('${state.info}'),
                    ),
                    Icon(Icons.error),
                  ],
                ),
                backgroundColor: Colors.red,
              ),
            );
        }
        if (state.isSubmitting) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                backgroundColor: kPrimaryColor,
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Submitting offer...'),
                    CircularProgressIndicator(),
                  ],
                ),
              ),
            );
        }
        if (state.isSuccess) {
          Navigator.pop(context);
          Navigator.pop(context);
          _navBloc.add(NavigationEvent.goToInboxScreenEvent());
        }
      },
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: appSizeConfig.blockSizeVertical * 2,
            ),
            TradeBarterItemCard(),
            SizedBox(
              height: appSizeConfig.blockSizeVertical * 4,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: appSizeConfig.blockSizeHorizontal * 4,
              ),
              child: Text(
                'Make your offer!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: appSizeConfig.blockSizeVertical * 2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: appSizeConfig.blockSizeHorizontal * 4,
              ),
              child: Text(
                'More chane of winning this item when you write a personal message. '
                'You may also ask questions to the person.',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 12.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: appSizeConfig.blockSizeVertical * 2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: appSizeConfig.blockSizeHorizontal * 4,
              ),
              child: BlocBuilder<OtherUserCubit, OtherUserState>(
                builder: (_, otherUserState) {
                  if (otherUserState.isSuccess) {
                    return ProfileWithRating(otherUserState.otherUserModel);
                  } else if (otherUserState.isFailure) {
                    return Center(
                      child: Text(
                        'Error: ${otherUserState.info}',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            ),
            SizedBox(
              height: appSizeConfig.blockSizeVertical * 2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: appSizeConfig.blockSizeHorizontal * 2,
              ),
              child: TradeMessageArea(
                controller: _messageController,
                validator: (_) {
                  return !state.isMessageValid
                      ? 'Message should have at least 4 characters.'
                      : null;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: appSizeConfig.blockSizeHorizontal * 4,
              ),
              child: Text(
                'Note: Cash offer is not allowed!',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.normal,
                  fontSize: 12.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: appSizeConfig.blockSizeVertical * 4,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: appSizeConfig.blockSizeHorizontal * 4,
              ),
              child: Text(
                'Select your item',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: appSizeConfig.blockSizeVertical * 1,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: appSizeConfig.blockSizeHorizontal * 4,
              ),
              child: Text(
                'Select the item or items you want to trade for from your item list.',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 12.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: appSizeConfig.blockSizeHorizontal * 4,
              ),
              child: Text(
                'Maximum of 4 items.',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 12.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: appSizeConfig.blockSizeVertical * 2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: appSizeConfig.blockSizeHorizontal * 4,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: getSelectedItems(state),
              ),
            ),
            SizedBox(
              height: appSizeConfig.blockSizeVertical * 4,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: appSizeConfig.blockSizeHorizontal * 10,
              ),
              child: ActionButton(
                title: 'Submit',
                onPressed:
                    isSignInButtonEnabled(state) ? _onFormSubmitted : null,
              ),
            ),
          ],
        );
      },
    );
  }

  List<Widget> getSelectedItems(TradeOfferState state) {
    List<Widget> items = [];
    if (state.pickedBarterItems != null) {
      items.add(SelectItemToTrade(
        barterModel: state.pickedBarterItems.length >= 1
            ? state.pickedBarterItems.values.toList()[0]
            : null,
      ));
      items.add(SelectItemToTrade(
        barterModel: state.pickedBarterItems.length >= 2
            ? state.pickedBarterItems.values.toList()[1]
            : null,
      ));
      items.add(SelectItemToTrade(
        barterModel: state.pickedBarterItems.length >= 3
            ? state.pickedBarterItems.values.toList()[2]
            : null,
      ));
      items.add(SelectItemToTrade(
        barterModel: state.pickedBarterItems.length >= 4
            ? state.pickedBarterItems.values.toList()[3]
            : null,
      ));
    }

    return items;
  }
}
