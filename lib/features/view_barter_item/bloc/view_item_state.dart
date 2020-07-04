part of 'view_item_bloc.dart';

@freezed
abstract class ViewItemState implements _$ViewItemState {
  const ViewItemState._();
  const factory ViewItemState({
    @required BarterModel barterModel,
    @required Map<String, PickedFile> pickedFileList,
    @required bool isTitleValid,
    @required bool isDescriptionValid,
    @required bool isPreferredItemValid,
    @required bool isLocationValid,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _ViewItemState;

  factory ViewItemState.empty() => ViewItemState(
        barterModel: BarterModel(),
        pickedFileList: Map<String, PickedFile>(),
        isTitleValid: true,
        isDescriptionValid: true,
        isPreferredItemValid: true,
        isLocationValid: true,
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory ViewItemState.loading(
          BarterModel barterModel, Map<String, PickedFile> pickedFileList) =>
      ViewItemState(
        barterModel: barterModel,
        pickedFileList: pickedFileList,
        isTitleValid: true,
        isDescriptionValid: true,
        isPreferredItemValid: true,
        isLocationValid: true,
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory ViewItemState.failure({@required String info}) => ViewItemState(
        barterModel: BarterModel(),
        pickedFileList: Map<String, PickedFile>(),
        isTitleValid: true,
        isDescriptionValid: true,
        isPreferredItemValid: true,
        isLocationValid: true,
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory ViewItemState.success({@required String info}) => ViewItemState(
        barterModel: BarterModel(),
        pickedFileList: Map<String, PickedFile>(),
        isTitleValid: true,
        isDescriptionValid: true,
        isPreferredItemValid: true,
        isLocationValid: true,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );

  bool get isPostFormValid =>
      isTitleValid &&
      isDescriptionValid &&
      isPreferredItemValid &&
      isLocationValid &&
      pickedFileList.isNotEmpty;

  Map<String, PickedFile> get pickedFileList;
}
