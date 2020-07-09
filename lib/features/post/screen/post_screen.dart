import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/features/post/bloc/post_bloc.dart';
import 'package:Toutly/features/post/widgets/item_description_form.dart';
import 'package:Toutly/features/post/widgets/select_photos.dart';
import 'package:Toutly/features/view_barter_item/bloc/view_barter_item_bloc.dart';
import 'package:Toutly/features/view_barter_item/screen/view_barter_item_screen.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class PostScreen extends StatelessWidget {
  final _postBloc = getIt<PostBloc>();
  final _viewBarterItemBloc = getIt<ViewBarterItemBloc>();

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);

    return BlocConsumer<PostBloc, PostState>(
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
                    Text('Posting...'),
                    CircularProgressIndicator(),
                  ],
                ),
              ),
            );
        }
        if (state.isSuccess) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                backgroundColor: kPrimaryColor,
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Successfully Posted'),
                  ],
                ),
              ),
            );

          ///clear the photo list for the next post
          _postBloc.add(PostEvent.clearPhotoList());
          _gotToPreviewBarterItem(state.barterModel, context);
        }
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: appSizeConfig.blockSizeHorizontal * 3,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    _buildSelectedPhotosSection(
                      appSizeConfig,
                    ),
                    ItemDescriptionForm(),
                  ],
                ),
              ),
            ],
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
        Text(
          'Selected Photos',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w500,
            fontSize: 16,
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
        Padding(
          padding: EdgeInsets.only(
            left: 8.0,
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
      ],
    );
  }

  void _gotToPreviewBarterItem(BarterModel barterModel, BuildContext context) {
    /// preview barter item posted
    _viewBarterItemBloc.add(
      ViewBarterItemEvent.viewBarterItem(barterModel),
    );

    Navigator.push<void>(
      context,
      MaterialPageRoute(
        builder: (context) => ViewBarterItemScreen(),
        fullscreenDialog: true,
      ),
    );
  }
}
