// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'view_item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ViewItemEventTearOff {
  const _$ViewItemEventTearOff();

  ViewItemEventViewBarterItem viewBarterItem(
      {@required BarterModel barterModel}) {
    return ViewItemEventViewBarterItem(
      barterModel: barterModel,
    );
  }

  ViewItemEventEditBarterItem editBarterItem(
      {@required BarterModel barterModel,
      @required Map<String, PickedFile> pickedFileList}) {
    return ViewItemEventEditBarterItem(
      barterModel: barterModel,
      pickedFileList: pickedFileList,
    );
  }
}

// ignore: unused_element
const $ViewItemEvent = _$ViewItemEventTearOff();

mixin _$ViewItemEvent {
  BarterModel get barterModel;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result viewBarterItem(BarterModel barterModel),
    @required
        Result editBarterItem(
            BarterModel barterModel, Map<String, PickedFile> pickedFileList),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result viewBarterItem(BarterModel barterModel),
    Result editBarterItem(
        BarterModel barterModel, Map<String, PickedFile> pickedFileList),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result viewBarterItem(ViewItemEventViewBarterItem value),
    @required Result editBarterItem(ViewItemEventEditBarterItem value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result viewBarterItem(ViewItemEventViewBarterItem value),
    Result editBarterItem(ViewItemEventEditBarterItem value),
    @required Result orElse(),
  });

  $ViewItemEventCopyWith<ViewItemEvent> get copyWith;
}

abstract class $ViewItemEventCopyWith<$Res> {
  factory $ViewItemEventCopyWith(
          ViewItemEvent value, $Res Function(ViewItemEvent) then) =
      _$ViewItemEventCopyWithImpl<$Res>;
  $Res call({BarterModel barterModel});
}

class _$ViewItemEventCopyWithImpl<$Res>
    implements $ViewItemEventCopyWith<$Res> {
  _$ViewItemEventCopyWithImpl(this._value, this._then);

  final ViewItemEvent _value;
  // ignore: unused_field
  final $Res Function(ViewItemEvent) _then;

  @override
  $Res call({
    Object barterModel = freezed,
  }) {
    return _then(_value.copyWith(
      barterModel: barterModel == freezed
          ? _value.barterModel
          : barterModel as BarterModel,
    ));
  }
}

abstract class $ViewItemEventViewBarterItemCopyWith<$Res>
    implements $ViewItemEventCopyWith<$Res> {
  factory $ViewItemEventViewBarterItemCopyWith(
          ViewItemEventViewBarterItem value,
          $Res Function(ViewItemEventViewBarterItem) then) =
      _$ViewItemEventViewBarterItemCopyWithImpl<$Res>;
  @override
  $Res call({BarterModel barterModel});
}

class _$ViewItemEventViewBarterItemCopyWithImpl<$Res>
    extends _$ViewItemEventCopyWithImpl<$Res>
    implements $ViewItemEventViewBarterItemCopyWith<$Res> {
  _$ViewItemEventViewBarterItemCopyWithImpl(ViewItemEventViewBarterItem _value,
      $Res Function(ViewItemEventViewBarterItem) _then)
      : super(_value, (v) => _then(v as ViewItemEventViewBarterItem));

  @override
  ViewItemEventViewBarterItem get _value =>
      super._value as ViewItemEventViewBarterItem;

  @override
  $Res call({
    Object barterModel = freezed,
  }) {
    return _then(ViewItemEventViewBarterItem(
      barterModel: barterModel == freezed
          ? _value.barterModel
          : barterModel as BarterModel,
    ));
  }
}

class _$ViewItemEventViewBarterItem implements ViewItemEventViewBarterItem {
  const _$ViewItemEventViewBarterItem({@required this.barterModel})
      : assert(barterModel != null);

  @override
  final BarterModel barterModel;

  @override
  String toString() {
    return 'ViewItemEvent.viewBarterItem(barterModel: $barterModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ViewItemEventViewBarterItem &&
            (identical(other.barterModel, barterModel) ||
                const DeepCollectionEquality()
                    .equals(other.barterModel, barterModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(barterModel);

  @override
  $ViewItemEventViewBarterItemCopyWith<ViewItemEventViewBarterItem>
      get copyWith => _$ViewItemEventViewBarterItemCopyWithImpl<
          ViewItemEventViewBarterItem>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result viewBarterItem(BarterModel barterModel),
    @required
        Result editBarterItem(
            BarterModel barterModel, Map<String, PickedFile> pickedFileList),
  }) {
    assert(viewBarterItem != null);
    assert(editBarterItem != null);
    return viewBarterItem(barterModel);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result viewBarterItem(BarterModel barterModel),
    Result editBarterItem(
        BarterModel barterModel, Map<String, PickedFile> pickedFileList),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (viewBarterItem != null) {
      return viewBarterItem(barterModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result viewBarterItem(ViewItemEventViewBarterItem value),
    @required Result editBarterItem(ViewItemEventEditBarterItem value),
  }) {
    assert(viewBarterItem != null);
    assert(editBarterItem != null);
    return viewBarterItem(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result viewBarterItem(ViewItemEventViewBarterItem value),
    Result editBarterItem(ViewItemEventEditBarterItem value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (viewBarterItem != null) {
      return viewBarterItem(this);
    }
    return orElse();
  }
}

abstract class ViewItemEventViewBarterItem implements ViewItemEvent {
  const factory ViewItemEventViewBarterItem(
      {@required BarterModel barterModel}) = _$ViewItemEventViewBarterItem;

  @override
  BarterModel get barterModel;
  @override
  $ViewItemEventViewBarterItemCopyWith<ViewItemEventViewBarterItem>
      get copyWith;
}

abstract class $ViewItemEventEditBarterItemCopyWith<$Res>
    implements $ViewItemEventCopyWith<$Res> {
  factory $ViewItemEventEditBarterItemCopyWith(
          ViewItemEventEditBarterItem value,
          $Res Function(ViewItemEventEditBarterItem) then) =
      _$ViewItemEventEditBarterItemCopyWithImpl<$Res>;
  @override
  $Res call({BarterModel barterModel, Map<String, PickedFile> pickedFileList});
}

class _$ViewItemEventEditBarterItemCopyWithImpl<$Res>
    extends _$ViewItemEventCopyWithImpl<$Res>
    implements $ViewItemEventEditBarterItemCopyWith<$Res> {
  _$ViewItemEventEditBarterItemCopyWithImpl(ViewItemEventEditBarterItem _value,
      $Res Function(ViewItemEventEditBarterItem) _then)
      : super(_value, (v) => _then(v as ViewItemEventEditBarterItem));

  @override
  ViewItemEventEditBarterItem get _value =>
      super._value as ViewItemEventEditBarterItem;

  @override
  $Res call({
    Object barterModel = freezed,
    Object pickedFileList = freezed,
  }) {
    return _then(ViewItemEventEditBarterItem(
      barterModel: barterModel == freezed
          ? _value.barterModel
          : barterModel as BarterModel,
      pickedFileList: pickedFileList == freezed
          ? _value.pickedFileList
          : pickedFileList as Map<String, PickedFile>,
    ));
  }
}

class _$ViewItemEventEditBarterItem implements ViewItemEventEditBarterItem {
  const _$ViewItemEventEditBarterItem(
      {@required this.barterModel, @required this.pickedFileList})
      : assert(barterModel != null),
        assert(pickedFileList != null);

  @override
  final BarterModel barterModel;
  @override
  final Map<String, PickedFile> pickedFileList;

  @override
  String toString() {
    return 'ViewItemEvent.editBarterItem(barterModel: $barterModel, pickedFileList: $pickedFileList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ViewItemEventEditBarterItem &&
            (identical(other.barterModel, barterModel) ||
                const DeepCollectionEquality()
                    .equals(other.barterModel, barterModel)) &&
            (identical(other.pickedFileList, pickedFileList) ||
                const DeepCollectionEquality()
                    .equals(other.pickedFileList, pickedFileList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(barterModel) ^
      const DeepCollectionEquality().hash(pickedFileList);

  @override
  $ViewItemEventEditBarterItemCopyWith<ViewItemEventEditBarterItem>
      get copyWith => _$ViewItemEventEditBarterItemCopyWithImpl<
          ViewItemEventEditBarterItem>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result viewBarterItem(BarterModel barterModel),
    @required
        Result editBarterItem(
            BarterModel barterModel, Map<String, PickedFile> pickedFileList),
  }) {
    assert(viewBarterItem != null);
    assert(editBarterItem != null);
    return editBarterItem(barterModel, pickedFileList);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result viewBarterItem(BarterModel barterModel),
    Result editBarterItem(
        BarterModel barterModel, Map<String, PickedFile> pickedFileList),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (editBarterItem != null) {
      return editBarterItem(barterModel, pickedFileList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result viewBarterItem(ViewItemEventViewBarterItem value),
    @required Result editBarterItem(ViewItemEventEditBarterItem value),
  }) {
    assert(viewBarterItem != null);
    assert(editBarterItem != null);
    return editBarterItem(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result viewBarterItem(ViewItemEventViewBarterItem value),
    Result editBarterItem(ViewItemEventEditBarterItem value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (editBarterItem != null) {
      return editBarterItem(this);
    }
    return orElse();
  }
}

abstract class ViewItemEventEditBarterItem implements ViewItemEvent {
  const factory ViewItemEventEditBarterItem(
          {@required BarterModel barterModel,
          @required Map<String, PickedFile> pickedFileList}) =
      _$ViewItemEventEditBarterItem;

  @override
  BarterModel get barterModel;
  Map<String, PickedFile> get pickedFileList;
  @override
  $ViewItemEventEditBarterItemCopyWith<ViewItemEventEditBarterItem>
      get copyWith;
}

class _$ViewItemStateTearOff {
  const _$ViewItemStateTearOff();

  _ViewItemState call(
      {@required BarterModel barterModel,
      @required Map<String, PickedFile> pickedFileList,
      @required bool isTitleValid,
      @required bool isDescriptionValid,
      @required bool isPreferredItemValid,
      @required bool isLocationValid,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) {
    return _ViewItemState(
      barterModel: barterModel,
      pickedFileList: pickedFileList,
      isTitleValid: isTitleValid,
      isDescriptionValid: isDescriptionValid,
      isPreferredItemValid: isPreferredItemValid,
      isLocationValid: isLocationValid,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isFailure: isFailure,
      info: info,
    );
  }
}

// ignore: unused_element
const $ViewItemState = _$ViewItemStateTearOff();

mixin _$ViewItemState {
  BarterModel get barterModel;
  Map<String, PickedFile> get pickedFileList;
  bool get isTitleValid;
  bool get isDescriptionValid;
  bool get isPreferredItemValid;
  bool get isLocationValid;
  bool get isSubmitting;
  bool get isSuccess;
  bool get isFailure;
  String get info;

  $ViewItemStateCopyWith<ViewItemState> get copyWith;
}

abstract class $ViewItemStateCopyWith<$Res> {
  factory $ViewItemStateCopyWith(
          ViewItemState value, $Res Function(ViewItemState) then) =
      _$ViewItemStateCopyWithImpl<$Res>;
  $Res call(
      {BarterModel barterModel,
      Map<String, PickedFile> pickedFileList,
      bool isTitleValid,
      bool isDescriptionValid,
      bool isPreferredItemValid,
      bool isLocationValid,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class _$ViewItemStateCopyWithImpl<$Res>
    implements $ViewItemStateCopyWith<$Res> {
  _$ViewItemStateCopyWithImpl(this._value, this._then);

  final ViewItemState _value;
  // ignore: unused_field
  final $Res Function(ViewItemState) _then;

  @override
  $Res call({
    Object barterModel = freezed,
    Object pickedFileList = freezed,
    Object isTitleValid = freezed,
    Object isDescriptionValid = freezed,
    Object isPreferredItemValid = freezed,
    Object isLocationValid = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_value.copyWith(
      barterModel: barterModel == freezed
          ? _value.barterModel
          : barterModel as BarterModel,
      pickedFileList: pickedFileList == freezed
          ? _value.pickedFileList
          : pickedFileList as Map<String, PickedFile>,
      isTitleValid:
          isTitleValid == freezed ? _value.isTitleValid : isTitleValid as bool,
      isDescriptionValid: isDescriptionValid == freezed
          ? _value.isDescriptionValid
          : isDescriptionValid as bool,
      isPreferredItemValid: isPreferredItemValid == freezed
          ? _value.isPreferredItemValid
          : isPreferredItemValid as bool,
      isLocationValid: isLocationValid == freezed
          ? _value.isLocationValid
          : isLocationValid as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

abstract class _$ViewItemStateCopyWith<$Res>
    implements $ViewItemStateCopyWith<$Res> {
  factory _$ViewItemStateCopyWith(
          _ViewItemState value, $Res Function(_ViewItemState) then) =
      __$ViewItemStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {BarterModel barterModel,
      Map<String, PickedFile> pickedFileList,
      bool isTitleValid,
      bool isDescriptionValid,
      bool isPreferredItemValid,
      bool isLocationValid,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class __$ViewItemStateCopyWithImpl<$Res>
    extends _$ViewItemStateCopyWithImpl<$Res>
    implements _$ViewItemStateCopyWith<$Res> {
  __$ViewItemStateCopyWithImpl(
      _ViewItemState _value, $Res Function(_ViewItemState) _then)
      : super(_value, (v) => _then(v as _ViewItemState));

  @override
  _ViewItemState get _value => super._value as _ViewItemState;

  @override
  $Res call({
    Object barterModel = freezed,
    Object pickedFileList = freezed,
    Object isTitleValid = freezed,
    Object isDescriptionValid = freezed,
    Object isPreferredItemValid = freezed,
    Object isLocationValid = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_ViewItemState(
      barterModel: barterModel == freezed
          ? _value.barterModel
          : barterModel as BarterModel,
      pickedFileList: pickedFileList == freezed
          ? _value.pickedFileList
          : pickedFileList as Map<String, PickedFile>,
      isTitleValid:
          isTitleValid == freezed ? _value.isTitleValid : isTitleValid as bool,
      isDescriptionValid: isDescriptionValid == freezed
          ? _value.isDescriptionValid
          : isDescriptionValid as bool,
      isPreferredItemValid: isPreferredItemValid == freezed
          ? _value.isPreferredItemValid
          : isPreferredItemValid as bool,
      isLocationValid: isLocationValid == freezed
          ? _value.isLocationValid
          : isLocationValid as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

class _$_ViewItemState extends _ViewItemState {
  const _$_ViewItemState(
      {@required this.barterModel,
      @required this.pickedFileList,
      @required this.isTitleValid,
      @required this.isDescriptionValid,
      @required this.isPreferredItemValid,
      @required this.isLocationValid,
      @required this.isSubmitting,
      @required this.isSuccess,
      @required this.isFailure,
      @required this.info})
      : assert(barterModel != null),
        assert(pickedFileList != null),
        assert(isTitleValid != null),
        assert(isDescriptionValid != null),
        assert(isPreferredItemValid != null),
        assert(isLocationValid != null),
        assert(isSubmitting != null),
        assert(isSuccess != null),
        assert(isFailure != null),
        assert(info != null),
        super._();

  @override
  final BarterModel barterModel;
  @override
  final Map<String, PickedFile> pickedFileList;
  @override
  final bool isTitleValid;
  @override
  final bool isDescriptionValid;
  @override
  final bool isPreferredItemValid;
  @override
  final bool isLocationValid;
  @override
  final bool isSubmitting;
  @override
  final bool isSuccess;
  @override
  final bool isFailure;
  @override
  final String info;

  @override
  String toString() {
    return 'ViewItemState(barterModel: $barterModel, pickedFileList: $pickedFileList, isTitleValid: $isTitleValid, isDescriptionValid: $isDescriptionValid, isPreferredItemValid: $isPreferredItemValid, isLocationValid: $isLocationValid, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ViewItemState &&
            (identical(other.barterModel, barterModel) ||
                const DeepCollectionEquality()
                    .equals(other.barterModel, barterModel)) &&
            (identical(other.pickedFileList, pickedFileList) ||
                const DeepCollectionEquality()
                    .equals(other.pickedFileList, pickedFileList)) &&
            (identical(other.isTitleValid, isTitleValid) ||
                const DeepCollectionEquality()
                    .equals(other.isTitleValid, isTitleValid)) &&
            (identical(other.isDescriptionValid, isDescriptionValid) ||
                const DeepCollectionEquality()
                    .equals(other.isDescriptionValid, isDescriptionValid)) &&
            (identical(other.isPreferredItemValid, isPreferredItemValid) ||
                const DeepCollectionEquality().equals(
                    other.isPreferredItemValid, isPreferredItemValid)) &&
            (identical(other.isLocationValid, isLocationValid) ||
                const DeepCollectionEquality()
                    .equals(other.isLocationValid, isLocationValid)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.isFailure, isFailure) ||
                const DeepCollectionEquality()
                    .equals(other.isFailure, isFailure)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(barterModel) ^
      const DeepCollectionEquality().hash(pickedFileList) ^
      const DeepCollectionEquality().hash(isTitleValid) ^
      const DeepCollectionEquality().hash(isDescriptionValid) ^
      const DeepCollectionEquality().hash(isPreferredItemValid) ^
      const DeepCollectionEquality().hash(isLocationValid) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(isFailure) ^
      const DeepCollectionEquality().hash(info);

  @override
  _$ViewItemStateCopyWith<_ViewItemState> get copyWith =>
      __$ViewItemStateCopyWithImpl<_ViewItemState>(this, _$identity);
}

abstract class _ViewItemState extends ViewItemState {
  const _ViewItemState._() : super._();
  const factory _ViewItemState(
      {@required BarterModel barterModel,
      @required Map<String, PickedFile> pickedFileList,
      @required bool isTitleValid,
      @required bool isDescriptionValid,
      @required bool isPreferredItemValid,
      @required bool isLocationValid,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) = _$_ViewItemState;

  @override
  BarterModel get barterModel;
  @override
  Map<String, PickedFile> get pickedFileList;
  @override
  bool get isTitleValid;
  @override
  bool get isDescriptionValid;
  @override
  bool get isPreferredItemValid;
  @override
  bool get isLocationValid;
  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  String get info;
  @override
  _$ViewItemStateCopyWith<_ViewItemState> get copyWith;
}
