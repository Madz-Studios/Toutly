part of 'post_bloc.dart';

@freezed
abstract class PostState implements _$PostState {
  const PostState._();
  const factory PostState({
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
  }) = _PostState;

  factory PostState.empty() => PostState(
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

  factory PostState.loading(Map<String, PickedFile> pickedFiles) => PostState(
        barterModel: BarterModel(),
        pickedFileList: pickedFiles,
        isTitleValid: true,
        isDescriptionValid: true,
        isPreferredItemValid: true,
        isLocationValid: true,
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory PostState.failure({@required String info}) => PostState(
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

  factory PostState.success({
    @required String info,
    @required BarterModel barterModel,
    @required Map<String, PickedFile> pickedFileList,
  }) =>
      PostState(
        barterModel: barterModel,
        pickedFileList: pickedFileList,
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
