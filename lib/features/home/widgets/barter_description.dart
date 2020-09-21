part of '../screen/home_screen.dart';

class _BarterItemDescription extends StatelessWidget {
  final BarterModel barterModel;

  _BarterItemDescription(this.barterModel);

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '${barterModel.title}',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(
          height: appSizeConfig.blockSizeVertical * 1.5,
        ),
        Text(
          '${barterModel.description}',
          style: TextStyle(
            fontWeight: FontWeight.w200,
            fontSize: 12,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
