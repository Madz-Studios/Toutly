import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/shared/widgets/buttons/back_or_close_button.dart';
import 'package:flutter/material.dart';

class TradeOfferScreen extends StatelessWidget {
  final BarterModel barterModel;

  TradeOfferScreen(this.barterModel);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackOrCloseButton(
          isDialog: false,
          buttonColor: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Trade offer',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BarterItemCard(barterModel),
          ],
        ),
      ),
    );
  }
}

class BarterItemCard extends StatelessWidget {
  final BarterModel barterModel;
  BarterItemCard(this.barterModel);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Row(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(
                8.0,
              ),
            ),
            image: DecorationImage(
              image: NetworkImage(barterModel.photosUrl[0]),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          children: [
            Text(
              '${barterModel.title}',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
              ),
            )
          ],
        )
      ],
    ));
  }
}
