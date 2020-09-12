// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'notification_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NotificationStateTearOff {
  const _$NotificationStateTearOff();

// ignore: unused_element
  _NotificationState call(
      {@required bool hasUnreadMessage,
      @required bool hasOfferMessageUnread,
      @required bool hasBarterMessageUnread,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) {
    return _NotificationState(
      hasUnreadMessage: hasUnreadMessage,
      hasOfferMessageUnread: hasOfferMessageUnread,
      hasBarterMessageUnread: hasBarterMessageUnread,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isFailure: isFailure,
      info: info,
    );
  }
}

// ignore: unused_element
const $NotificationState = _$NotificationStateTearOff();

mixin _$NotificationState {
  bool get hasUnreadMessage;
  bool get hasOfferMessageUnread;
  bool get hasBarterMessageUnread;
  bool get isSubmitting;
  bool get isSuccess;
  bool get isFailure;
  String get info;

  $NotificationStateCopyWith<NotificationState> get copyWith;
}

abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res>;
  $Res call(
      {bool hasUnreadMessage,
      bool hasOfferMessageUnread,
      bool hasBarterMessageUnread,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class _$NotificationStateCopyWithImpl<$Res>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  final NotificationState _value;
  // ignore: unused_field
  final $Res Function(NotificationState) _then;

  @override
  $Res call({
    Object hasUnreadMessage = freezed,
    Object hasOfferMessageUnread = freezed,
    Object hasBarterMessageUnread = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_value.copyWith(
      hasUnreadMessage: hasUnreadMessage == freezed
          ? _value.hasUnreadMessage
          : hasUnreadMessage as bool,
      hasOfferMessageUnread: hasOfferMessageUnread == freezed
          ? _value.hasOfferMessageUnread
          : hasOfferMessageUnread as bool,
      hasBarterMessageUnread: hasBarterMessageUnread == freezed
          ? _value.hasBarterMessageUnread
          : hasBarterMessageUnread as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

abstract class _$NotificationStateCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory _$NotificationStateCopyWith(
          _NotificationState value, $Res Function(_NotificationState) then) =
      __$NotificationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool hasUnreadMessage,
      bool hasOfferMessageUnread,
      bool hasBarterMessageUnread,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class __$NotificationStateCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res>
    implements _$NotificationStateCopyWith<$Res> {
  __$NotificationStateCopyWithImpl(
      _NotificationState _value, $Res Function(_NotificationState) _then)
      : super(_value, (v) => _then(v as _NotificationState));

  @override
  _NotificationState get _value => super._value as _NotificationState;

  @override
  $Res call({
    Object hasUnreadMessage = freezed,
    Object hasOfferMessageUnread = freezed,
    Object hasBarterMessageUnread = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_NotificationState(
      hasUnreadMessage: hasUnreadMessage == freezed
          ? _value.hasUnreadMessage
          : hasUnreadMessage as bool,
      hasOfferMessageUnread: hasOfferMessageUnread == freezed
          ? _value.hasOfferMessageUnread
          : hasOfferMessageUnread as bool,
      hasBarterMessageUnread: hasBarterMessageUnread == freezed
          ? _value.hasBarterMessageUnread
          : hasBarterMessageUnread as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

class _$_NotificationState
    with DiagnosticableTreeMixin
    implements _NotificationState {
  const _$_NotificationState(
      {@required this.hasUnreadMessage,
      @required this.hasOfferMessageUnread,
      @required this.hasBarterMessageUnread,
      @required this.isSubmitting,
      @required this.isSuccess,
      @required this.isFailure,
      @required this.info})
      : assert(hasUnreadMessage != null),
        assert(hasOfferMessageUnread != null),
        assert(hasBarterMessageUnread != null),
        assert(isSubmitting != null),
        assert(isSuccess != null),
        assert(isFailure != null),
        assert(info != null);

  @override
  final bool hasUnreadMessage;
  @override
  final bool hasOfferMessageUnread;
  @override
  final bool hasBarterMessageUnread;
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
    return 'NotificationState(hasUnreadMessage: $hasUnreadMessage, hasOfferMessageUnread: $hasOfferMessageUnread, hasBarterMessageUnread: $hasBarterMessageUnread, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationState'))
      ..add(DiagnosticsProperty('hasUnreadMessage', hasUnreadMessage))
      ..add(DiagnosticsProperty('hasOfferMessageUnread', hasOfferMessageUnread))
      ..add(
          DiagnosticsProperty('hasBarterMessageUnread', hasBarterMessageUnread))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty('isSuccess', isSuccess))
      ..add(DiagnosticsProperty('isFailure', isFailure))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotificationState &&
            (identical(other.hasUnreadMessage, hasUnreadMessage) ||
                const DeepCollectionEquality()
                    .equals(other.hasUnreadMessage, hasUnreadMessage)) &&
            (identical(other.hasOfferMessageUnread, hasOfferMessageUnread) ||
                const DeepCollectionEquality().equals(
                    other.hasOfferMessageUnread, hasOfferMessageUnread)) &&
            (identical(other.hasBarterMessageUnread, hasBarterMessageUnread) ||
                const DeepCollectionEquality().equals(
                    other.hasBarterMessageUnread, hasBarterMessageUnread)) &&
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
      const DeepCollectionEquality().hash(hasUnreadMessage) ^
      const DeepCollectionEquality().hash(hasOfferMessageUnread) ^
      const DeepCollectionEquality().hash(hasBarterMessageUnread) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(isFailure) ^
      const DeepCollectionEquality().hash(info);

  @override
  _$NotificationStateCopyWith<_NotificationState> get copyWith =>
      __$NotificationStateCopyWithImpl<_NotificationState>(this, _$identity);
}

abstract class _NotificationState implements NotificationState {
  const factory _NotificationState(
      {@required bool hasUnreadMessage,
      @required bool hasOfferMessageUnread,
      @required bool hasBarterMessageUnread,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) = _$_NotificationState;

  @override
  bool get hasUnreadMessage;
  @override
  bool get hasOfferMessageUnread;
  @override
  bool get hasBarterMessageUnread;
  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  String get info;
  @override
  _$NotificationStateCopyWith<_NotificationState> get copyWith;
}
