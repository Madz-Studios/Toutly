import 'dart:io';

import 'package:Toutly/core/cubits/navigation/navigation_cubit.dart';
import 'package:Toutly/core/cubits/post_barter/post_barter_cubit.dart';
import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/features/post/widgets/post_barter_form.dart';
import 'package:Toutly/features/post/widgets/select_photos.dart';
import 'package:Toutly/features/view_barter_item/screen/view_barter_item_screen.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/loading_widget.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class PostScreen extends StatelessWidget {
  final _postBarterCubit = getIt<PostBarterCubit>();
  final _navCubit = getIt<NavigationCubit>();
  final LoadingWidget _loadingWidget = LoadingWidget();

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    bool isShowDialog = false;

    return BlocConsumer<PostBarterCubit, PostBarterState>(
      listener: (context, state) {
        if (state.isSubmitting) {
          if (Platform.isIOS) {
            _loadingWidget.showCupertinoDialog(context);
          } else {
            _loadingWidget.showMaterialDialog(context);
          }
          isShowDialog = true;
        }
        if (state.isFailure) {
          Flushbar(
            message: "${state.info}",
            backgroundColor: kSecondaryRedAccentColor,
            duration: Duration(seconds: 3),
          )..show(context);
        }
        if (state.isSuccess) {
          if (isShowDialog) {
            Navigator.of(context).pop();
            isShowDialog = false;
          }

          ///clear the photo list for the next post
          _postBarterCubit.reset();
          _navCubit.goToUserProfileScreen();
          _gotToPreviewBarterItem(state.barterModel, context);
        }
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              // Touch and fold the keyboard
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: appSizeConfig.blockSizeHorizontal * 3,
                  ),
                  child: BlocBuilder<CurrentUserCubit, CurrentUserState>(
                    builder: (_, state) {
                      final UserModel currentUser = state.currentUserModel;
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          _buildSelectedPhotosSection(
                            appSizeConfig,
                          ),
                          PostBarterForm(currentUser),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Column _buildSelectedPhotosSection(AppSizeConfig appSizeConfig) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: appSizeConfig.blockSizeVertical * 1.5,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: appSizeConfig.blockSizeHorizontal * 2.5,
            top: appSizeConfig.blockSizeVertical * 1,
          ),
          child: Text(
            'Tips: Add at least 3 photos',
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.normal,
              fontSize: 12,
              color: Color(0XFF949494),
            ),
          ),
        ),
        SizedBox(
          height: appSizeConfig.blockSizeVertical * 1.5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SelectPhotos(),
            SelectPhotos(),
            SelectPhotos(),
            SelectPhotos(),
          ],
        ),
        SizedBox(
          height: appSizeConfig.blockSizeVertical * 1.5,
        ),
      ],
    );
  }

  void _gotToPreviewBarterItem(BarterModel barterModel, BuildContext context) {
    /// preview barter item posted

    Navigator.push<void>(
      context,
      MaterialPageRoute(
        builder: (context) => ViewBarterItemScreen(
          barterModel: barterModel,
          isDialog: true,
        ),
        fullscreenDialog: true,
      ),
    );
  }
}
