// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'sign_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SignEventTearOff {
  const _$SignEventTearOff();

  SignEventNameChanged nameChanged({String name}) {
    return SignEventNameChanged(
      name: name,
    );
  }

  SignEventEmailChanged emailChanged({String email}) {
    return SignEventEmailChanged(
      email: email,
    );
  }

  SignEventPasswordChanged passwordChanged({String password}) {
    return SignEventPasswordChanged(
      password: password,
    );
  }

  SignEventSignUpWithNameEmailPasswordPressed
      signUpWithNameEmailPasswordPressed(
          {String name, String email, String password}) {
    return SignEventSignUpWithNameEmailPasswordPressed(
      name: name,
      email: email,
      password: password,
    );
  }

  SignEventEmailPasswordPressed signInWithEmailPasswordPressed(
      {String email, String password}) {
    return SignEventEmailPasswordPressed(
      email: email,
      password: password,
    );
  }

  SignEventSignInWithGooglePressed signInWithGooglePressed() {
    return const SignEventSignInWithGooglePressed();
  }

  SignEventSignInWithFacebookPressed signInWithFacebookPressed() {
    return const SignEventSignInWithFacebookPressed();
  }

  SignEventSignInWithApplePressed signInWithApplePressed() {
    return const SignEventSignInWithApplePressed();
  }
}

// ignore: unused_element
const $SignEvent = _$SignEventTearOff();

mixin _$SignEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required
        Result signUpWithNameEmailPasswordPressed(
            String name, String email, String password),
    @required
        Result signInWithEmailPasswordPressed(String email, String password),
    @required Result signInWithGooglePressed(),
    @required Result signInWithFacebookPressed(),
    @required Result signInWithApplePressed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result signUpWithNameEmailPasswordPressed(
        String name, String email, String password),
    Result signInWithEmailPasswordPressed(String email, String password),
    Result signInWithGooglePressed(),
    Result signInWithFacebookPressed(),
    Result signInWithApplePressed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(SignEventNameChanged value),
    @required Result emailChanged(SignEventEmailChanged value),
    @required Result passwordChanged(SignEventPasswordChanged value),
    @required
        Result signUpWithNameEmailPasswordPressed(
            SignEventSignUpWithNameEmailPasswordPressed value),
    @required
        Result signInWithEmailPasswordPressed(
            SignEventEmailPasswordPressed value),
    @required
        Result signInWithGooglePressed(SignEventSignInWithGooglePressed value),
    @required
        Result signInWithFacebookPressed(
            SignEventSignInWithFacebookPressed value),
    @required
        Result signInWithApplePressed(SignEventSignInWithApplePressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(SignEventNameChanged value),
    Result emailChanged(SignEventEmailChanged value),
    Result passwordChanged(SignEventPasswordChanged value),
    Result signUpWithNameEmailPasswordPressed(
        SignEventSignUpWithNameEmailPasswordPressed value),
    Result signInWithEmailPasswordPressed(SignEventEmailPasswordPressed value),
    Result signInWithGooglePressed(SignEventSignInWithGooglePressed value),
    Result signInWithFacebookPressed(SignEventSignInWithFacebookPressed value),
    Result signInWithApplePressed(SignEventSignInWithApplePressed value),
    @required Result orElse(),
  });
}

abstract class $SignEventCopyWith<$Res> {
  factory $SignEventCopyWith(SignEvent value, $Res Function(SignEvent) then) =
      _$SignEventCopyWithImpl<$Res>;
}

class _$SignEventCopyWithImpl<$Res> implements $SignEventCopyWith<$Res> {
  _$SignEventCopyWithImpl(this._value, this._then);

  final SignEvent _value;
  // ignore: unused_field
  final $Res Function(SignEvent) _then;
}

abstract class $SignEventNameChangedCopyWith<$Res> {
  factory $SignEventNameChangedCopyWith(SignEventNameChanged value,
          $Res Function(SignEventNameChanged) then) =
      _$SignEventNameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

class _$SignEventNameChangedCopyWithImpl<$Res>
    extends _$SignEventCopyWithImpl<$Res>
    implements $SignEventNameChangedCopyWith<$Res> {
  _$SignEventNameChangedCopyWithImpl(
      SignEventNameChanged _value, $Res Function(SignEventNameChanged) _then)
      : super(_value, (v) => _then(v as SignEventNameChanged));

  @override
  SignEventNameChanged get _value => super._value as SignEventNameChanged;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(SignEventNameChanged(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

class _$SignEventNameChanged implements SignEventNameChanged {
  const _$SignEventNameChanged({this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'SignEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignEventNameChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  $SignEventNameChangedCopyWith<SignEventNameChanged> get copyWith =>
      _$SignEventNameChangedCopyWithImpl<SignEventNameChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required
        Result signUpWithNameEmailPasswordPressed(
            String name, String email, String password),
    @required
        Result signInWithEmailPasswordPressed(String email, String password),
    @required Result signInWithGooglePressed(),
    @required Result signInWithFacebookPressed(),
    @required Result signInWithApplePressed(),
  }) {
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithNameEmailPasswordPressed != null);
    assert(signInWithEmailPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithApplePressed != null);
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result signUpWithNameEmailPasswordPressed(
        String name, String email, String password),
    Result signInWithEmailPasswordPressed(String email, String password),
    Result signInWithGooglePressed(),
    Result signInWithFacebookPressed(),
    Result signInWithApplePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(SignEventNameChanged value),
    @required Result emailChanged(SignEventEmailChanged value),
    @required Result passwordChanged(SignEventPasswordChanged value),
    @required
        Result signUpWithNameEmailPasswordPressed(
            SignEventSignUpWithNameEmailPasswordPressed value),
    @required
        Result signInWithEmailPasswordPressed(
            SignEventEmailPasswordPressed value),
    @required
        Result signInWithGooglePressed(SignEventSignInWithGooglePressed value),
    @required
        Result signInWithFacebookPressed(
            SignEventSignInWithFacebookPressed value),
    @required
        Result signInWithApplePressed(SignEventSignInWithApplePressed value),
  }) {
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithNameEmailPasswordPressed != null);
    assert(signInWithEmailPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithApplePressed != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(SignEventNameChanged value),
    Result emailChanged(SignEventEmailChanged value),
    Result passwordChanged(SignEventPasswordChanged value),
    Result signUpWithNameEmailPasswordPressed(
        SignEventSignUpWithNameEmailPasswordPressed value),
    Result signInWithEmailPasswordPressed(SignEventEmailPasswordPressed value),
    Result signInWithGooglePressed(SignEventSignInWithGooglePressed value),
    Result signInWithFacebookPressed(SignEventSignInWithFacebookPressed value),
    Result signInWithApplePressed(SignEventSignInWithApplePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class SignEventNameChanged implements SignEvent {
  const factory SignEventNameChanged({String name}) = _$SignEventNameChanged;

  String get name;
  $SignEventNameChangedCopyWith<SignEventNameChanged> get copyWith;
}

abstract class $SignEventEmailChangedCopyWith<$Res> {
  factory $SignEventEmailChangedCopyWith(SignEventEmailChanged value,
          $Res Function(SignEventEmailChanged) then) =
      _$SignEventEmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

class _$SignEventEmailChangedCopyWithImpl<$Res>
    extends _$SignEventCopyWithImpl<$Res>
    implements $SignEventEmailChangedCopyWith<$Res> {
  _$SignEventEmailChangedCopyWithImpl(
      SignEventEmailChanged _value, $Res Function(SignEventEmailChanged) _then)
      : super(_value, (v) => _then(v as SignEventEmailChanged));

  @override
  SignEventEmailChanged get _value => super._value as SignEventEmailChanged;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(SignEventEmailChanged(
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

class _$SignEventEmailChanged implements SignEventEmailChanged {
  const _$SignEventEmailChanged({this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'SignEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignEventEmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  $SignEventEmailChangedCopyWith<SignEventEmailChanged> get copyWith =>
      _$SignEventEmailChangedCopyWithImpl<SignEventEmailChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required
        Result signUpWithNameEmailPasswordPressed(
            String name, String email, String password),
    @required
        Result signInWithEmailPasswordPressed(String email, String password),
    @required Result signInWithGooglePressed(),
    @required Result signInWithFacebookPressed(),
    @required Result signInWithApplePressed(),
  }) {
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithNameEmailPasswordPressed != null);
    assert(signInWithEmailPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithApplePressed != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result signUpWithNameEmailPasswordPressed(
        String name, String email, String password),
    Result signInWithEmailPasswordPressed(String email, String password),
    Result signInWithGooglePressed(),
    Result signInWithFacebookPressed(),
    Result signInWithApplePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(SignEventNameChanged value),
    @required Result emailChanged(SignEventEmailChanged value),
    @required Result passwordChanged(SignEventPasswordChanged value),
    @required
        Result signUpWithNameEmailPasswordPressed(
            SignEventSignUpWithNameEmailPasswordPressed value),
    @required
        Result signInWithEmailPasswordPressed(
            SignEventEmailPasswordPressed value),
    @required
        Result signInWithGooglePressed(SignEventSignInWithGooglePressed value),
    @required
        Result signInWithFacebookPressed(
            SignEventSignInWithFacebookPressed value),
    @required
        Result signInWithApplePressed(SignEventSignInWithApplePressed value),
  }) {
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithNameEmailPasswordPressed != null);
    assert(signInWithEmailPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithApplePressed != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(SignEventNameChanged value),
    Result emailChanged(SignEventEmailChanged value),
    Result passwordChanged(SignEventPasswordChanged value),
    Result signUpWithNameEmailPasswordPressed(
        SignEventSignUpWithNameEmailPasswordPressed value),
    Result signInWithEmailPasswordPressed(SignEventEmailPasswordPressed value),
    Result signInWithGooglePressed(SignEventSignInWithGooglePressed value),
    Result signInWithFacebookPressed(SignEventSignInWithFacebookPressed value),
    Result signInWithApplePressed(SignEventSignInWithApplePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class SignEventEmailChanged implements SignEvent {
  const factory SignEventEmailChanged({String email}) = _$SignEventEmailChanged;

  String get email;
  $SignEventEmailChangedCopyWith<SignEventEmailChanged> get copyWith;
}

abstract class $SignEventPasswordChangedCopyWith<$Res> {
  factory $SignEventPasswordChangedCopyWith(SignEventPasswordChanged value,
          $Res Function(SignEventPasswordChanged) then) =
      _$SignEventPasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

class _$SignEventPasswordChangedCopyWithImpl<$Res>
    extends _$SignEventCopyWithImpl<$Res>
    implements $SignEventPasswordChangedCopyWith<$Res> {
  _$SignEventPasswordChangedCopyWithImpl(SignEventPasswordChanged _value,
      $Res Function(SignEventPasswordChanged) _then)
      : super(_value, (v) => _then(v as SignEventPasswordChanged));

  @override
  SignEventPasswordChanged get _value =>
      super._value as SignEventPasswordChanged;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(SignEventPasswordChanged(
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

class _$SignEventPasswordChanged implements SignEventPasswordChanged {
  const _$SignEventPasswordChanged({this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'SignEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignEventPasswordChanged &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @override
  $SignEventPasswordChangedCopyWith<SignEventPasswordChanged> get copyWith =>
      _$SignEventPasswordChangedCopyWithImpl<SignEventPasswordChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required
        Result signUpWithNameEmailPasswordPressed(
            String name, String email, String password),
    @required
        Result signInWithEmailPasswordPressed(String email, String password),
    @required Result signInWithGooglePressed(),
    @required Result signInWithFacebookPressed(),
    @required Result signInWithApplePressed(),
  }) {
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithNameEmailPasswordPressed != null);
    assert(signInWithEmailPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithApplePressed != null);
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result signUpWithNameEmailPasswordPressed(
        String name, String email, String password),
    Result signInWithEmailPasswordPressed(String email, String password),
    Result signInWithGooglePressed(),
    Result signInWithFacebookPressed(),
    Result signInWithApplePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(SignEventNameChanged value),
    @required Result emailChanged(SignEventEmailChanged value),
    @required Result passwordChanged(SignEventPasswordChanged value),
    @required
        Result signUpWithNameEmailPasswordPressed(
            SignEventSignUpWithNameEmailPasswordPressed value),
    @required
        Result signInWithEmailPasswordPressed(
            SignEventEmailPasswordPressed value),
    @required
        Result signInWithGooglePressed(SignEventSignInWithGooglePressed value),
    @required
        Result signInWithFacebookPressed(
            SignEventSignInWithFacebookPressed value),
    @required
        Result signInWithApplePressed(SignEventSignInWithApplePressed value),
  }) {
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithNameEmailPasswordPressed != null);
    assert(signInWithEmailPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithApplePressed != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(SignEventNameChanged value),
    Result emailChanged(SignEventEmailChanged value),
    Result passwordChanged(SignEventPasswordChanged value),
    Result signUpWithNameEmailPasswordPressed(
        SignEventSignUpWithNameEmailPasswordPressed value),
    Result signInWithEmailPasswordPressed(SignEventEmailPasswordPressed value),
    Result signInWithGooglePressed(SignEventSignInWithGooglePressed value),
    Result signInWithFacebookPressed(SignEventSignInWithFacebookPressed value),
    Result signInWithApplePressed(SignEventSignInWithApplePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class SignEventPasswordChanged implements SignEvent {
  const factory SignEventPasswordChanged({String password}) =
      _$SignEventPasswordChanged;

  String get password;
  $SignEventPasswordChangedCopyWith<SignEventPasswordChanged> get copyWith;
}

abstract class $SignEventSignUpWithNameEmailPasswordPressedCopyWith<$Res> {
  factory $SignEventSignUpWithNameEmailPasswordPressedCopyWith(
          SignEventSignUpWithNameEmailPasswordPressed value,
          $Res Function(SignEventSignUpWithNameEmailPasswordPressed) then) =
      _$SignEventSignUpWithNameEmailPasswordPressedCopyWithImpl<$Res>;
  $Res call({String name, String email, String password});
}

class _$SignEventSignUpWithNameEmailPasswordPressedCopyWithImpl<$Res>
    extends _$SignEventCopyWithImpl<$Res>
    implements $SignEventSignUpWithNameEmailPasswordPressedCopyWith<$Res> {
  _$SignEventSignUpWithNameEmailPasswordPressedCopyWithImpl(
      SignEventSignUpWithNameEmailPasswordPressed _value,
      $Res Function(SignEventSignUpWithNameEmailPasswordPressed) _then)
      : super(_value,
            (v) => _then(v as SignEventSignUpWithNameEmailPasswordPressed));

  @override
  SignEventSignUpWithNameEmailPasswordPressed get _value =>
      super._value as SignEventSignUpWithNameEmailPasswordPressed;

  @override
  $Res call({
    Object name = freezed,
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(SignEventSignUpWithNameEmailPasswordPressed(
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

class _$SignEventSignUpWithNameEmailPasswordPressed
    implements SignEventSignUpWithNameEmailPasswordPressed {
  const _$SignEventSignUpWithNameEmailPasswordPressed(
      {this.name, this.email, this.password});

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignEvent.signUpWithNameEmailPasswordPressed(name: $name, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignEventSignUpWithNameEmailPasswordPressed &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @override
  $SignEventSignUpWithNameEmailPasswordPressedCopyWith<
          SignEventSignUpWithNameEmailPasswordPressed>
      get copyWith => _$SignEventSignUpWithNameEmailPasswordPressedCopyWithImpl<
          SignEventSignUpWithNameEmailPasswordPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required
        Result signUpWithNameEmailPasswordPressed(
            String name, String email, String password),
    @required
        Result signInWithEmailPasswordPressed(String email, String password),
    @required Result signInWithGooglePressed(),
    @required Result signInWithFacebookPressed(),
    @required Result signInWithApplePressed(),
  }) {
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithNameEmailPasswordPressed != null);
    assert(signInWithEmailPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithApplePressed != null);
    return signUpWithNameEmailPasswordPressed(name, email, password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result signUpWithNameEmailPasswordPressed(
        String name, String email, String password),
    Result signInWithEmailPasswordPressed(String email, String password),
    Result signInWithGooglePressed(),
    Result signInWithFacebookPressed(),
    Result signInWithApplePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signUpWithNameEmailPasswordPressed != null) {
      return signUpWithNameEmailPasswordPressed(name, email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(SignEventNameChanged value),
    @required Result emailChanged(SignEventEmailChanged value),
    @required Result passwordChanged(SignEventPasswordChanged value),
    @required
        Result signUpWithNameEmailPasswordPressed(
            SignEventSignUpWithNameEmailPasswordPressed value),
    @required
        Result signInWithEmailPasswordPressed(
            SignEventEmailPasswordPressed value),
    @required
        Result signInWithGooglePressed(SignEventSignInWithGooglePressed value),
    @required
        Result signInWithFacebookPressed(
            SignEventSignInWithFacebookPressed value),
    @required
        Result signInWithApplePressed(SignEventSignInWithApplePressed value),
  }) {
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithNameEmailPasswordPressed != null);
    assert(signInWithEmailPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithApplePressed != null);
    return signUpWithNameEmailPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(SignEventNameChanged value),
    Result emailChanged(SignEventEmailChanged value),
    Result passwordChanged(SignEventPasswordChanged value),
    Result signUpWithNameEmailPasswordPressed(
        SignEventSignUpWithNameEmailPasswordPressed value),
    Result signInWithEmailPasswordPressed(SignEventEmailPasswordPressed value),
    Result signInWithGooglePressed(SignEventSignInWithGooglePressed value),
    Result signInWithFacebookPressed(SignEventSignInWithFacebookPressed value),
    Result signInWithApplePressed(SignEventSignInWithApplePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signUpWithNameEmailPasswordPressed != null) {
      return signUpWithNameEmailPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class SignEventSignUpWithNameEmailPasswordPressed
    implements SignEvent {
  const factory SignEventSignUpWithNameEmailPasswordPressed(
      {String name,
      String email,
      String password}) = _$SignEventSignUpWithNameEmailPasswordPressed;

  String get name;
  String get email;
  String get password;
  $SignEventSignUpWithNameEmailPasswordPressedCopyWith<
      SignEventSignUpWithNameEmailPasswordPressed> get copyWith;
}

abstract class $SignEventEmailPasswordPressedCopyWith<$Res> {
  factory $SignEventEmailPasswordPressedCopyWith(
          SignEventEmailPasswordPressed value,
          $Res Function(SignEventEmailPasswordPressed) then) =
      _$SignEventEmailPasswordPressedCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

class _$SignEventEmailPasswordPressedCopyWithImpl<$Res>
    extends _$SignEventCopyWithImpl<$Res>
    implements $SignEventEmailPasswordPressedCopyWith<$Res> {
  _$SignEventEmailPasswordPressedCopyWithImpl(
      SignEventEmailPasswordPressed _value,
      $Res Function(SignEventEmailPasswordPressed) _then)
      : super(_value, (v) => _then(v as SignEventEmailPasswordPressed));

  @override
  SignEventEmailPasswordPressed get _value =>
      super._value as SignEventEmailPasswordPressed;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(SignEventEmailPasswordPressed(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

class _$SignEventEmailPasswordPressed implements SignEventEmailPasswordPressed {
  const _$SignEventEmailPasswordPressed({this.email, this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignEvent.signInWithEmailPasswordPressed(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignEventEmailPasswordPressed &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @override
  $SignEventEmailPasswordPressedCopyWith<SignEventEmailPasswordPressed>
      get copyWith => _$SignEventEmailPasswordPressedCopyWithImpl<
          SignEventEmailPasswordPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required
        Result signUpWithNameEmailPasswordPressed(
            String name, String email, String password),
    @required
        Result signInWithEmailPasswordPressed(String email, String password),
    @required Result signInWithGooglePressed(),
    @required Result signInWithFacebookPressed(),
    @required Result signInWithApplePressed(),
  }) {
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithNameEmailPasswordPressed != null);
    assert(signInWithEmailPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithApplePressed != null);
    return signInWithEmailPasswordPressed(email, password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result signUpWithNameEmailPasswordPressed(
        String name, String email, String password),
    Result signInWithEmailPasswordPressed(String email, String password),
    Result signInWithGooglePressed(),
    Result signInWithFacebookPressed(),
    Result signInWithApplePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailPasswordPressed != null) {
      return signInWithEmailPasswordPressed(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(SignEventNameChanged value),
    @required Result emailChanged(SignEventEmailChanged value),
    @required Result passwordChanged(SignEventPasswordChanged value),
    @required
        Result signUpWithNameEmailPasswordPressed(
            SignEventSignUpWithNameEmailPasswordPressed value),
    @required
        Result signInWithEmailPasswordPressed(
            SignEventEmailPasswordPressed value),
    @required
        Result signInWithGooglePressed(SignEventSignInWithGooglePressed value),
    @required
        Result signInWithFacebookPressed(
            SignEventSignInWithFacebookPressed value),
    @required
        Result signInWithApplePressed(SignEventSignInWithApplePressed value),
  }) {
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithNameEmailPasswordPressed != null);
    assert(signInWithEmailPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithApplePressed != null);
    return signInWithEmailPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(SignEventNameChanged value),
    Result emailChanged(SignEventEmailChanged value),
    Result passwordChanged(SignEventPasswordChanged value),
    Result signUpWithNameEmailPasswordPressed(
        SignEventSignUpWithNameEmailPasswordPressed value),
    Result signInWithEmailPasswordPressed(SignEventEmailPasswordPressed value),
    Result signInWithGooglePressed(SignEventSignInWithGooglePressed value),
    Result signInWithFacebookPressed(SignEventSignInWithFacebookPressed value),
    Result signInWithApplePressed(SignEventSignInWithApplePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailPasswordPressed != null) {
      return signInWithEmailPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class SignEventEmailPasswordPressed implements SignEvent {
  const factory SignEventEmailPasswordPressed({String email, String password}) =
      _$SignEventEmailPasswordPressed;

  String get email;
  String get password;
  $SignEventEmailPasswordPressedCopyWith<SignEventEmailPasswordPressed>
      get copyWith;
}

abstract class $SignEventSignInWithGooglePressedCopyWith<$Res> {
  factory $SignEventSignInWithGooglePressedCopyWith(
          SignEventSignInWithGooglePressed value,
          $Res Function(SignEventSignInWithGooglePressed) then) =
      _$SignEventSignInWithGooglePressedCopyWithImpl<$Res>;
}

class _$SignEventSignInWithGooglePressedCopyWithImpl<$Res>
    extends _$SignEventCopyWithImpl<$Res>
    implements $SignEventSignInWithGooglePressedCopyWith<$Res> {
  _$SignEventSignInWithGooglePressedCopyWithImpl(
      SignEventSignInWithGooglePressed _value,
      $Res Function(SignEventSignInWithGooglePressed) _then)
      : super(_value, (v) => _then(v as SignEventSignInWithGooglePressed));

  @override
  SignEventSignInWithGooglePressed get _value =>
      super._value as SignEventSignInWithGooglePressed;
}

class _$SignEventSignInWithGooglePressed
    implements SignEventSignInWithGooglePressed {
  const _$SignEventSignInWithGooglePressed();

  @override
  String toString() {
    return 'SignEvent.signInWithGooglePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignEventSignInWithGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required
        Result signUpWithNameEmailPasswordPressed(
            String name, String email, String password),
    @required
        Result signInWithEmailPasswordPressed(String email, String password),
    @required Result signInWithGooglePressed(),
    @required Result signInWithFacebookPressed(),
    @required Result signInWithApplePressed(),
  }) {
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithNameEmailPasswordPressed != null);
    assert(signInWithEmailPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithApplePressed != null);
    return signInWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result signUpWithNameEmailPasswordPressed(
        String name, String email, String password),
    Result signInWithEmailPasswordPressed(String email, String password),
    Result signInWithGooglePressed(),
    Result signInWithFacebookPressed(),
    Result signInWithApplePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(SignEventNameChanged value),
    @required Result emailChanged(SignEventEmailChanged value),
    @required Result passwordChanged(SignEventPasswordChanged value),
    @required
        Result signUpWithNameEmailPasswordPressed(
            SignEventSignUpWithNameEmailPasswordPressed value),
    @required
        Result signInWithEmailPasswordPressed(
            SignEventEmailPasswordPressed value),
    @required
        Result signInWithGooglePressed(SignEventSignInWithGooglePressed value),
    @required
        Result signInWithFacebookPressed(
            SignEventSignInWithFacebookPressed value),
    @required
        Result signInWithApplePressed(SignEventSignInWithApplePressed value),
  }) {
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithNameEmailPasswordPressed != null);
    assert(signInWithEmailPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithApplePressed != null);
    return signInWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(SignEventNameChanged value),
    Result emailChanged(SignEventEmailChanged value),
    Result passwordChanged(SignEventPasswordChanged value),
    Result signUpWithNameEmailPasswordPressed(
        SignEventSignUpWithNameEmailPasswordPressed value),
    Result signInWithEmailPasswordPressed(SignEventEmailPasswordPressed value),
    Result signInWithGooglePressed(SignEventSignInWithGooglePressed value),
    Result signInWithFacebookPressed(SignEventSignInWithFacebookPressed value),
    Result signInWithApplePressed(SignEventSignInWithApplePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed(this);
    }
    return orElse();
  }
}

abstract class SignEventSignInWithGooglePressed implements SignEvent {
  const factory SignEventSignInWithGooglePressed() =
      _$SignEventSignInWithGooglePressed;
}

abstract class $SignEventSignInWithFacebookPressedCopyWith<$Res> {
  factory $SignEventSignInWithFacebookPressedCopyWith(
          SignEventSignInWithFacebookPressed value,
          $Res Function(SignEventSignInWithFacebookPressed) then) =
      _$SignEventSignInWithFacebookPressedCopyWithImpl<$Res>;
}

class _$SignEventSignInWithFacebookPressedCopyWithImpl<$Res>
    extends _$SignEventCopyWithImpl<$Res>
    implements $SignEventSignInWithFacebookPressedCopyWith<$Res> {
  _$SignEventSignInWithFacebookPressedCopyWithImpl(
      SignEventSignInWithFacebookPressed _value,
      $Res Function(SignEventSignInWithFacebookPressed) _then)
      : super(_value, (v) => _then(v as SignEventSignInWithFacebookPressed));

  @override
  SignEventSignInWithFacebookPressed get _value =>
      super._value as SignEventSignInWithFacebookPressed;
}

class _$SignEventSignInWithFacebookPressed
    implements SignEventSignInWithFacebookPressed {
  const _$SignEventSignInWithFacebookPressed();

  @override
  String toString() {
    return 'SignEvent.signInWithFacebookPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignEventSignInWithFacebookPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required
        Result signUpWithNameEmailPasswordPressed(
            String name, String email, String password),
    @required
        Result signInWithEmailPasswordPressed(String email, String password),
    @required Result signInWithGooglePressed(),
    @required Result signInWithFacebookPressed(),
    @required Result signInWithApplePressed(),
  }) {
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithNameEmailPasswordPressed != null);
    assert(signInWithEmailPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithApplePressed != null);
    return signInWithFacebookPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result signUpWithNameEmailPasswordPressed(
        String name, String email, String password),
    Result signInWithEmailPasswordPressed(String email, String password),
    Result signInWithGooglePressed(),
    Result signInWithFacebookPressed(),
    Result signInWithApplePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithFacebookPressed != null) {
      return signInWithFacebookPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(SignEventNameChanged value),
    @required Result emailChanged(SignEventEmailChanged value),
    @required Result passwordChanged(SignEventPasswordChanged value),
    @required
        Result signUpWithNameEmailPasswordPressed(
            SignEventSignUpWithNameEmailPasswordPressed value),
    @required
        Result signInWithEmailPasswordPressed(
            SignEventEmailPasswordPressed value),
    @required
        Result signInWithGooglePressed(SignEventSignInWithGooglePressed value),
    @required
        Result signInWithFacebookPressed(
            SignEventSignInWithFacebookPressed value),
    @required
        Result signInWithApplePressed(SignEventSignInWithApplePressed value),
  }) {
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithNameEmailPasswordPressed != null);
    assert(signInWithEmailPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithApplePressed != null);
    return signInWithFacebookPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(SignEventNameChanged value),
    Result emailChanged(SignEventEmailChanged value),
    Result passwordChanged(SignEventPasswordChanged value),
    Result signUpWithNameEmailPasswordPressed(
        SignEventSignUpWithNameEmailPasswordPressed value),
    Result signInWithEmailPasswordPressed(SignEventEmailPasswordPressed value),
    Result signInWithGooglePressed(SignEventSignInWithGooglePressed value),
    Result signInWithFacebookPressed(SignEventSignInWithFacebookPressed value),
    Result signInWithApplePressed(SignEventSignInWithApplePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithFacebookPressed != null) {
      return signInWithFacebookPressed(this);
    }
    return orElse();
  }
}

abstract class SignEventSignInWithFacebookPressed implements SignEvent {
  const factory SignEventSignInWithFacebookPressed() =
      _$SignEventSignInWithFacebookPressed;
}

abstract class $SignEventSignInWithApplePressedCopyWith<$Res> {
  factory $SignEventSignInWithApplePressedCopyWith(
          SignEventSignInWithApplePressed value,
          $Res Function(SignEventSignInWithApplePressed) then) =
      _$SignEventSignInWithApplePressedCopyWithImpl<$Res>;
}

class _$SignEventSignInWithApplePressedCopyWithImpl<$Res>
    extends _$SignEventCopyWithImpl<$Res>
    implements $SignEventSignInWithApplePressedCopyWith<$Res> {
  _$SignEventSignInWithApplePressedCopyWithImpl(
      SignEventSignInWithApplePressed _value,
      $Res Function(SignEventSignInWithApplePressed) _then)
      : super(_value, (v) => _then(v as SignEventSignInWithApplePressed));

  @override
  SignEventSignInWithApplePressed get _value =>
      super._value as SignEventSignInWithApplePressed;
}

class _$SignEventSignInWithApplePressed
    implements SignEventSignInWithApplePressed {
  const _$SignEventSignInWithApplePressed();

  @override
  String toString() {
    return 'SignEvent.signInWithApplePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignEventSignInWithApplePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required
        Result signUpWithNameEmailPasswordPressed(
            String name, String email, String password),
    @required
        Result signInWithEmailPasswordPressed(String email, String password),
    @required Result signInWithGooglePressed(),
    @required Result signInWithFacebookPressed(),
    @required Result signInWithApplePressed(),
  }) {
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithNameEmailPasswordPressed != null);
    assert(signInWithEmailPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithApplePressed != null);
    return signInWithApplePressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result signUpWithNameEmailPasswordPressed(
        String name, String email, String password),
    Result signInWithEmailPasswordPressed(String email, String password),
    Result signInWithGooglePressed(),
    Result signInWithFacebookPressed(),
    Result signInWithApplePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithApplePressed != null) {
      return signInWithApplePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(SignEventNameChanged value),
    @required Result emailChanged(SignEventEmailChanged value),
    @required Result passwordChanged(SignEventPasswordChanged value),
    @required
        Result signUpWithNameEmailPasswordPressed(
            SignEventSignUpWithNameEmailPasswordPressed value),
    @required
        Result signInWithEmailPasswordPressed(
            SignEventEmailPasswordPressed value),
    @required
        Result signInWithGooglePressed(SignEventSignInWithGooglePressed value),
    @required
        Result signInWithFacebookPressed(
            SignEventSignInWithFacebookPressed value),
    @required
        Result signInWithApplePressed(SignEventSignInWithApplePressed value),
  }) {
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithNameEmailPasswordPressed != null);
    assert(signInWithEmailPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithApplePressed != null);
    return signInWithApplePressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(SignEventNameChanged value),
    Result emailChanged(SignEventEmailChanged value),
    Result passwordChanged(SignEventPasswordChanged value),
    Result signUpWithNameEmailPasswordPressed(
        SignEventSignUpWithNameEmailPasswordPressed value),
    Result signInWithEmailPasswordPressed(SignEventEmailPasswordPressed value),
    Result signInWithGooglePressed(SignEventSignInWithGooglePressed value),
    Result signInWithFacebookPressed(SignEventSignInWithFacebookPressed value),
    Result signInWithApplePressed(SignEventSignInWithApplePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithApplePressed != null) {
      return signInWithApplePressed(this);
    }
    return orElse();
  }
}

abstract class SignEventSignInWithApplePressed implements SignEvent {
  const factory SignEventSignInWithApplePressed() =
      _$SignEventSignInWithApplePressed;
}

class _$SignStateTearOff {
  const _$SignStateTearOff();

  _SignState call(
      {@required bool isNameValid,
      @required bool isEmailValid,
      @required bool isPasswordValid,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) {
    return _SignState(
      isNameValid: isNameValid,
      isEmailValid: isEmailValid,
      isPasswordValid: isPasswordValid,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isFailure: isFailure,
      info: info,
    );
  }
}

// ignore: unused_element
const $SignState = _$SignStateTearOff();

mixin _$SignState {
  bool get isNameValid;
  bool get isEmailValid;
  bool get isPasswordValid;
  bool get isSubmitting;
  bool get isSuccess;
  bool get isFailure;
  String get info;

  $SignStateCopyWith<SignState> get copyWith;
}

abstract class $SignStateCopyWith<$Res> {
  factory $SignStateCopyWith(SignState value, $Res Function(SignState) then) =
      _$SignStateCopyWithImpl<$Res>;
  $Res call(
      {bool isNameValid,
      bool isEmailValid,
      bool isPasswordValid,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class _$SignStateCopyWithImpl<$Res> implements $SignStateCopyWith<$Res> {
  _$SignStateCopyWithImpl(this._value, this._then);

  final SignState _value;
  // ignore: unused_field
  final $Res Function(SignState) _then;

  @override
  $Res call({
    Object isNameValid = freezed,
    Object isEmailValid = freezed,
    Object isPasswordValid = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_value.copyWith(
      isNameValid:
          isNameValid == freezed ? _value.isNameValid : isNameValid as bool,
      isEmailValid:
          isEmailValid == freezed ? _value.isEmailValid : isEmailValid as bool,
      isPasswordValid: isPasswordValid == freezed
          ? _value.isPasswordValid
          : isPasswordValid as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

abstract class _$SignStateCopyWith<$Res> implements $SignStateCopyWith<$Res> {
  factory _$SignStateCopyWith(
          _SignState value, $Res Function(_SignState) then) =
      __$SignStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isNameValid,
      bool isEmailValid,
      bool isPasswordValid,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class __$SignStateCopyWithImpl<$Res> extends _$SignStateCopyWithImpl<$Res>
    implements _$SignStateCopyWith<$Res> {
  __$SignStateCopyWithImpl(_SignState _value, $Res Function(_SignState) _then)
      : super(_value, (v) => _then(v as _SignState));

  @override
  _SignState get _value => super._value as _SignState;

  @override
  $Res call({
    Object isNameValid = freezed,
    Object isEmailValid = freezed,
    Object isPasswordValid = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_SignState(
      isNameValid:
          isNameValid == freezed ? _value.isNameValid : isNameValid as bool,
      isEmailValid:
          isEmailValid == freezed ? _value.isEmailValid : isEmailValid as bool,
      isPasswordValid: isPasswordValid == freezed
          ? _value.isPasswordValid
          : isPasswordValid as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

class _$_SignState extends _SignState {
  const _$_SignState(
      {@required this.isNameValid,
      @required this.isEmailValid,
      @required this.isPasswordValid,
      @required this.isSubmitting,
      @required this.isSuccess,
      @required this.isFailure,
      @required this.info})
      : assert(isNameValid != null),
        assert(isEmailValid != null),
        assert(isPasswordValid != null),
        assert(isSubmitting != null),
        assert(isSuccess != null),
        assert(isFailure != null),
        assert(info != null),
        super._();

  @override
  final bool isNameValid;
  @override
  final bool isEmailValid;
  @override
  final bool isPasswordValid;
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
    return 'SignState(isNameValid: $isNameValid, isEmailValid: $isEmailValid, isPasswordValid: $isPasswordValid, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignState &&
            (identical(other.isNameValid, isNameValid) ||
                const DeepCollectionEquality()
                    .equals(other.isNameValid, isNameValid)) &&
            (identical(other.isEmailValid, isEmailValid) ||
                const DeepCollectionEquality()
                    .equals(other.isEmailValid, isEmailValid)) &&
            (identical(other.isPasswordValid, isPasswordValid) ||
                const DeepCollectionEquality()
                    .equals(other.isPasswordValid, isPasswordValid)) &&
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
      const DeepCollectionEquality().hash(isNameValid) ^
      const DeepCollectionEquality().hash(isEmailValid) ^
      const DeepCollectionEquality().hash(isPasswordValid) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(isFailure) ^
      const DeepCollectionEquality().hash(info);

  @override
  _$SignStateCopyWith<_SignState> get copyWith =>
      __$SignStateCopyWithImpl<_SignState>(this, _$identity);
}

abstract class _SignState extends SignState {
  const _SignState._() : super._();
  const factory _SignState(
      {@required bool isNameValid,
      @required bool isEmailValid,
      @required bool isPasswordValid,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) = _$_SignState;

  @override
  bool get isNameValid;
  @override
  bool get isEmailValid;
  @override
  bool get isPasswordValid;
  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  String get info;
  @override
  _$SignStateCopyWith<_SignState> get copyWith;
}
