import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'edit_barter_item_bloc.freezed.dart';
part 'edit_barter_item_event.dart';
part 'edit_barter_item_state.dart';

@lazySingleton
class EditBarterItemBloc
    extends Bloc<EditBarterItemEvent, EditBarterItemState> {
  EditBarterItemBloc() : super(EditBarterItemState.initial());
  @override
  Stream<EditBarterItemState> mapEventToState(EditBarterItemEvent event) {
    throw UnimplementedError();
  }
}
