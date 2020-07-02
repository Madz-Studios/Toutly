import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'view_item_bloc.freezed.dart';
part 'view_item_event.dart';
part 'view_item_state.dart';

@lazySingleton
class ViewItemBloc extends Bloc<ViewItemEvent, ViewItemState> {
  @override
  ViewItemState get initialState => ViewItemState.empty();

  @override
  Stream<ViewItemState> mapEventToState(ViewItemEvent event) async* {
    yield* event.map(
      viewBarterItem: (e) async* {
        e.barterModel;
      },
      editBarterItem: (e) async* {},
    );
  }
}
