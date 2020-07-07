import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'view_barter_item_bloc.freezed.dart';
part 'view_barter_item_event.dart';
part 'view_barter_item_state.dart';

@lazySingleton
class ViewBarterItemBloc
    extends Bloc<ViewBarterItemEvent, ViewBarterItemState> {
  ViewBarterItemBloc() : super(ViewBarterItemState.init());

  @override
  Stream<ViewBarterItemState> mapEventToState(
      ViewBarterItemEvent event) async* {
    yield* event.map(
      initial: (_) async* {},
      viewBarterItem: (e) async* {
        yield ViewBarterItemState.loadBarterItem(
          barterModel: e.barterModel,
        );
      },
    );
  }
}
