import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:flutter/material.dart';

class TradeOfferScreen extends StatelessWidget {
  final BarterModel barterModel;

  TradeOfferScreen(this.barterModel);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trade offer'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BarterItemCard(),
          ],
        ),
      ),
    );
  }
}

class BarterItemCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Row(
      children: [],
    ));
  }
}
