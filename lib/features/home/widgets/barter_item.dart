part of '../screen/home_screen.dart';

class _BarterItem extends StatelessWidget {
  _BarterItem({
    @required this.barterModel,
  });

  final BarterModel barterModel;

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: appSizeConfig.blockSizeVertical * 1,
      ),
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(
                  left: appSizeConfig.blockSizeHorizontal * 3,
                  top: appSizeConfig.blockSizeVertical * 1,
                ),
                child: ProfileWithRating(
                  userPhotoUrl: barterModel?.userPhotoUrl,
                  name: barterModel?.userFullName,
                )),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: appSizeConfig.blockSizeHorizontal * 2,
                vertical: appSizeConfig.blockSizeVertical * 1,
              ),
              child: Center(
                child: Container(
                  height: appSizeConfig.blockSizeVertical * 22.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(
                        barterModel.photosUrl[0],
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: appSizeConfig.blockSizeHorizontal * 2,
                vertical: appSizeConfig.blockSizeVertical * 1,
              ),
              child: _BarterItemDescription(barterModel),
            )
          ],
        ),
      ),
    );
  }
}
