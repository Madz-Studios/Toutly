import 'package:Toutly/core/cubits/barter_item/current_user/list/all/all_list_barter_model_current_user_cubit.dart';
import 'package:Toutly/core/cubits/make_offer/make_offer_cubit.dart';
import 'package:Toutly/core/cubits/navigation/navigation_cubit.dart';
import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/cubits/user/other_user/other_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/features/make_offer/widgets/make_offer_barter_item_card.dart';
import 'package:Toutly/features/make_offer/widgets/make_offer_barter_item_list.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/buttons/action_button.dart';
import 'package:Toutly/shared/widgets/profile_with_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MakeOfferForm extends StatefulWidget {
  final UserModel currentUser;
  final BarterModel otherUserBarterModel;

  MakeOfferForm(
    this.currentUser,
    this.otherUserBarterModel,
  );

  @override
  _MakeOfferFormState createState() => _MakeOfferFormState();
}

class _MakeOfferFormState extends State<MakeOfferForm> {
  final _navCubit = getIt<NavigationCubit>();
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

  _onFormSubmitted() {
    _makeOfferCubit.submitButtonOfferPressed(
      currentUser: widget.currentUser,
      otherUserBarterModel: widget.otherUserBarterModel,
      message: _messageController.text,
    );
  }

  void _onMessageChanged() {
    _makeOfferCubit.messageChanged(_messageController.text);
  }

  List<Widget> getSelectedItems(MakeOfferState state) {
    List<Widget> items = [];
    items.add(_SelectItemToTrade(
      barterModel: state.pickedBarterItems.length >= 1
          ? state.pickedBarterItems.values.toList()[0]
          : null,
    ));
    items.add(_SelectItemToTrade(
      barterModel: state.pickedBarterItems.length >= 2
          ? state.pickedBarterItems.values.toList()[1]
          : null,
    ));
    items.add(_SelectItemToTrade(
      barterModel: state.pickedBarterItems.length >= 3
          ? state.pickedBarterItems.values.toList()[2]
          : null,
    ));
    items.add(_SelectItemToTrade(
      barterModel: state.pickedBarterItems.length >= 4
          ? state.pickedBarterItems.values.toList()[3]
          : null,
    ));

    return items;
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
          _navCubit.goToInboxScreen();

          _makeOfferCubit.reset();
        }
      },
      builder: (context, makeOfferState) {
        return GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            // Touch and fold the keyboard
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: appSizeConfig.blockSizeVertical * 2,
              ),
              MakeOfferBarterItemCard(),
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
                child: _TradeMessageArea(
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
                child: ActionButton(
                  title: 'Submit',
                  onPressed: isSignInButtonEnabled(makeOfferState)
                      ? _onFormSubmitted
                      : null,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _SelectItemToTrade extends StatelessWidget {
  final _makeOfferCubit = getIt<MakeOfferCubit>();
  final _allListBarterModelCurrentUserCubit =
      getIt<AllListBarterModelCurrentUserCubit>();

  _SelectItemToTrade({
    Key key,
    @required this.barterModel,
  }) : super(key: key);

  final BarterModel barterModel;

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return BlocBuilder<CurrentUserCubit, CurrentUserState>(
      builder: (_, currentUserState) {
        if (currentUserState.isSuccess) {
          final currentUser = currentUserState.currentUserModel;
          return Container(
            height: appSizeConfig.blockSizeVertical * 7.5,
            width: appSizeConfig.blockSizeHorizontal * 17.5,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0XFFB4B4B4),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  8.0,
                ),
              ),
            ),
            child: barterModel == null
                ? IconButton(
                    icon: Icon(
                      Icons.add,
                      color: Color(0XFFB4B4B4),
                      size: appSizeConfig.blockSizeVertical * 4,
                    ),
                    onPressed: () {
                      _showAddBarterBottomSheet(currentUser, context);
                    },
                  )
                : ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        8.0,
                      ),
                    ),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                8.0,
                              ),
                            ),
                            image: DecorationImage(
                              image: NetworkImage(
                                barterModel?.photosUrl[0] ?? '',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: GestureDetector(
                            child: Icon(
                              Icons.remove_circle,
                              color: Color(0XFFB4B4B4),
                            ),
                            onTap: () {
                              _makeOfferCubit.removeItemToOffer(barterModel);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
          );
        } else {
          return Container();
        }
      },
    );
  }

  void _showAddBarterBottomSheet(UserModel currentUser, BuildContext context) {
    showModalBottomSheet(
      isDismissible: false,
      context: context,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.0),
          topRight: Radius.circular(8.0),
        ),
      ),
      builder: (BuildContext bc) {
        _allListBarterModelCurrentUserCubit
            .getCurrentUserAllBarterItems(currentUser.userId);
        return MakeOfferBarterItemList();
      },
    );
  }
}

class _TradeMessageArea extends StatelessWidget {
  _TradeMessageArea({
    this.controller,
    this.validator,
  });

  final TextEditingController controller;
  final FormFieldValidator<String> validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: 6,
      keyboardType: TextInputType.multiline,
      maxLength: 500,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w300,
        fontSize: 12.0,
      ),
      autovalidate: true,
      validator: validator,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0XFFF7F5F5),
        hintText: 'Write a message..',
        hintStyle: TextStyle(
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.normal,
          fontSize: 12.0,
          color: Colors.black,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kPrimaryColor),
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
