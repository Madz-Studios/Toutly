import 'package:Toutly/core/cubits/barter_item/other_user/single_barter_item_other_user_cubit.dart';
import 'package:Toutly/core/cubits/make_offer/make_offer_cubit.dart';
import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/cubits/user/other_user/other_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/features/make_offer/widgets/trade_barter_item_card.dart';
import 'package:Toutly/features/navigation/bloc/navigation_bloc.dart';
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
  final _makeOfferCubit = getIt<MakeOfferCubit>();
  final _messageController = TextEditingController();

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

  bool isSignInButtonEnabled(MakeOfferState state) {
    return state.isMakeOfferFormValid &&
        state.isMessageValid &&
        !state.isSubmitting;
  }

  _onFormSubmitted(UserModel currentUser, BarterModel otherUserBarterModel) {
    if (_messageController.text.isNotEmpty) {
      _makeOfferCubit.submitButtonOfferPressed(
        currentUser: currentUser,
        otherUserBarterModel: otherUserBarterModel,
        message: _messageController.text,
      );
    }
  }

  void _onMessageChanged() {
    _makeOfferCubit.messageChanged(_messageController.text);
  }

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return BlocConsumer<MakeOfferCubit, MakeOfferState>(
      listener: (context, makeOfferState) {
        if (makeOfferState.isFailure) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text('${makeOfferState.info}'),
                    ),
                    Icon(Icons.error),
                  ],
                ),
                backgroundColor: Colors.red,
              ),
            );
        }
        if (makeOfferState.isSubmitting) {
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
        if (makeOfferState.isSuccess) {
          Navigator.pop(context);
          Navigator.pop(context);
          _navBloc.add(NavigationEvent.goToInboxScreenEvent());
        }
      },
      builder: (context, makeOfferState) {
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
                  return !makeOfferState.isMessageValid
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
                children: getSelectedItems(makeOfferState),
              ),
            ),
            SizedBox(
              height: appSizeConfig.blockSizeVertical * 4,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: appSizeConfig.blockSizeHorizontal * 10,
              ),
              child: BlocBuilder<CurrentUserCubit, CurrentUserState>(
                builder: (_, currentUserState) {
                  if (currentUserState.isSuccess) {
                    final currentUser = currentUserState.currentUserModel;
                    return BlocBuilder<SingleBarterItemOtherUserCubit,
                        SingleBarterItemOtherUserState>(
                      builder: (_, singleBarterItemOtherUserState) {
                        final otherUserBarterModel =
                            singleBarterItemOtherUserState.otherUserBarterItem;
                        return ActionButton(
                          title: 'Submit',
                          onPressed: isSignInButtonEnabled(makeOfferState)
                              ? _onFormSubmitted(
                                  currentUser, otherUserBarterModel)
                              : null,
                        );
                      },
                    );
                  } else {
                    return Center(
                      child: Text(
                        'Error: ${currentUserState.info}',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        );
      },
    );
  }

  List<Widget> getSelectedItems(MakeOfferState state) {
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
