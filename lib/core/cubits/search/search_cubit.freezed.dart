// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SearchStateTearOff {
  const _$SearchStateTearOff();

// ignore: unused_element
  _SearchState call(
      {List<BarterModel> listBarterModels,
      AlgoliaQuerySnapshot algoliaQuerySnapshot,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      String info}) {
    return _SearchState(
      listBarterModels: listBarterModels,
      algoliaQuerySnapshot: algoliaQuerySnapshot,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isFailure: isFailure,
      info: info,
    );
  }
}

// ignore: unused_element
const $SearchState = _$SearchStateTearOff();

mixin _$SearchState {
  List<BarterModel> get listBarterModels;
  AlgoliaQuerySnapshot get algoliaQuerySnapshot;
  bool get isSubmitting;
  bool get isSuccess;
  bool get isFailure;
  String get info;

  $SearchStateCopyWith<SearchState> get copyWith;
}

abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call(
      {List<BarterModel> listBarterModels,
      AlgoliaQuerySnapshot algoliaQuerySnapshot,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object listBarterModels = freezed,
    Object algoliaQuerySnapshot = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_value.copyWith(
      listBarterModels: listBarterModels == freezed
          ? _value.listBarterModels
          : listBarterModels as List<BarterModel>,
      algoliaQuerySnapshot: algoliaQuerySnapshot == freezed
          ? _value.algoliaQuerySnapshot
          : algoliaQuerySnapshot as AlgoliaQuerySnapshot,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

abstract class _$SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(
          _SearchState value, $Res Function(_SearchState) then) =
      __$SearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<BarterModel> listBarterModels,
      AlgoliaQuerySnapshot algoliaQuerySnapshot,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class __$SearchStateCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(
      _SearchState _value, $Res Function(_SearchState) _then)
      : super(_value, (v) => _then(v as _SearchState));

  @override
  _SearchState get _value => super._value as _SearchState;

  @override
  $Res call({
    Object listBarterModels = freezed,
    Object algoliaQuerySnapshot = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_SearchState(
      listBarterModels: listBarterModels == freezed
          ? _value.listBarterModels
          : listBarterModels as List<BarterModel>,
      algoliaQuerySnapshot: algoliaQuerySnapshot == freezed
          ? _value.algoliaQuerySnapshot
          : algoliaQuerySnapshot as AlgoliaQuerySnapshot,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

class _$_SearchState with DiagnosticableTreeMixin implements _SearchState {
  const _$_SearchState(
      {this.listBarterModels,
      this.algoliaQuerySnapshot,
      @required this.isSubmitting,
      @required this.isSuccess,
      @required this.isFailure,
      this.info})
      : assert(isSubmitting != null),
        assert(isSuccess != null),
        assert(isFailure != null);

  @override
  final List<BarterModel> listBarterModels;
  @override
  final AlgoliaQuerySnapshot algoliaQuerySnapshot;
  @override
  final bool isSubmitting;
  @override
  final bool isSuccess;
  @override
  final bool isFailure;
  @override
  final String info;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState(listBarterModels: $listBarterModels, algoliaQuerySnapshot: $algoliaQuerySnapshot, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchState'))
      ..add(DiagnosticsProperty('listBarterModels', listBarterModels))
      ..add(DiagnosticsProperty('algoliaQuerySnapshot', algoliaQuerySnapshot))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty('isSuccess', isSuccess))
      ..add(DiagnosticsProperty('isFailure', isFailure))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchState &&
            (identical(other.listBarterModels, listBarterModels) ||
                const DeepCollectionEquality()
                    .equals(other.listBarterModels, listBarterModels)) &&
            (identical(other.algoliaQuerySnapshot, algoliaQuerySnapshot) ||
                const DeepCollectionEquality().equals(
                    other.algoliaQuerySnapshot, algoliaQuerySnapshot)) &&
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
      const DeepCollectionEquality().hash(listBarterModels) ^
      const DeepCollectionEquality().hash(algoliaQuerySnapshot) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(isFailure) ^
      const DeepCollectionEquality().hash(info);

  @override
  _$SearchStateCopyWith<_SearchState> get copyWith =>
      __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {List<BarterModel> listBarterModels,
      AlgoliaQuerySnapshot algoliaQuerySnapshot,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      String info}) = _$_SearchState;

  @override
  List<BarterModel> get listBarterModels;
  @override
  AlgoliaQuerySnapshot get algoliaQuerySnapshot;
  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  String get info;
  @override
  _$SearchStateCopyWith<_SearchState> get copyWith;
}
