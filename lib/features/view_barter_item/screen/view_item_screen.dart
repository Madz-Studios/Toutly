import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/features/navigation/bloc/navigation_bloc.dart';
import 'package:Toutly/features/view_barter_item/bloc/view_item_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewItemScreen extends StatelessWidget {
  final _navBloc = getIt<NavigationBloc>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ViewItemBloc, ViewItemState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(child: Text('Hello')),
              RaisedButton(
                child: Text('Home'),
                onPressed: () {
                  print('Log out!');
                  _navBloc.add(NavigationEvent.goToHomeScreenEvent());
                },
              )
            ],
          );
        });
  }
}
