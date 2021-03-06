// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SignInFormEventTearOff {
  const _$SignInFormEventTearOff();

  RegisterWithEmailnPasswordPressed registerWithEmailnPasswordPressed() {
    return const RegisterWithEmailnPasswordPressed();
  }

  SignInWithEmailnPasswordPressed signInWithEmailnPasswordPressed() {
    return const SignInWithEmailnPasswordPressed();
  }

  SignInWithGooglePressed signInWithGooglePressed() {
    return const SignInWithGooglePressed();
  }

  EmailChanged emailChanged(String emailStr) {
    return EmailChanged(
      emailStr,
    );
  }

  PasswordChanged passwordChanged(String passwordStr) {
    return PasswordChanged(
      passwordStr,
    );
  }
}

// ignore: unused_element
const $SignInFormEvent = _$SignInFormEventTearOff();

mixin _$SignInFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result registerWithEmailnPasswordPressed(),
    @required Result signInWithEmailnPasswordPressed(),
    @required Result signInWithGooglePressed(),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result registerWithEmailnPasswordPressed(),
    Result signInWithEmailnPasswordPressed(),
    Result signInWithGooglePressed(),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result registerWithEmailnPasswordPressed(
            RegisterWithEmailnPasswordPressed value),
    @required
        Result signInWithEmailnPasswordPressed(
            SignInWithEmailnPasswordPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result registerWithEmailnPasswordPressed(
        RegisterWithEmailnPasswordPressed value),
    Result signInWithEmailnPasswordPressed(
        SignInWithEmailnPasswordPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    @required Result orElse(),
  });
}

abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res>;
}

class _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  final SignInFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignInFormEvent) _then;
}

abstract class $RegisterWithEmailnPasswordPressedCopyWith<$Res> {
  factory $RegisterWithEmailnPasswordPressedCopyWith(
          RegisterWithEmailnPasswordPressed value,
          $Res Function(RegisterWithEmailnPasswordPressed) then) =
      _$RegisterWithEmailnPasswordPressedCopyWithImpl<$Res>;
}

class _$RegisterWithEmailnPasswordPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $RegisterWithEmailnPasswordPressedCopyWith<$Res> {
  _$RegisterWithEmailnPasswordPressedCopyWithImpl(
      RegisterWithEmailnPasswordPressed _value,
      $Res Function(RegisterWithEmailnPasswordPressed) _then)
      : super(_value, (v) => _then(v as RegisterWithEmailnPasswordPressed));

  @override
  RegisterWithEmailnPasswordPressed get _value =>
      super._value as RegisterWithEmailnPasswordPressed;
}

class _$RegisterWithEmailnPasswordPressed
    with DiagnosticableTreeMixin
    implements RegisterWithEmailnPasswordPressed {
  const _$RegisterWithEmailnPasswordPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.registerWithEmailnPasswordPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SignInFormEvent.registerWithEmailnPasswordPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterWithEmailnPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result registerWithEmailnPasswordPressed(),
    @required Result signInWithEmailnPasswordPressed(),
    @required Result signInWithGooglePressed(),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
  }) {
    assert(registerWithEmailnPasswordPressed != null);
    assert(signInWithEmailnPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    return registerWithEmailnPasswordPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result registerWithEmailnPasswordPressed(),
    Result signInWithEmailnPasswordPressed(),
    Result signInWithGooglePressed(),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailnPasswordPressed != null) {
      return registerWithEmailnPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result registerWithEmailnPasswordPressed(
            RegisterWithEmailnPasswordPressed value),
    @required
        Result signInWithEmailnPasswordPressed(
            SignInWithEmailnPasswordPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
  }) {
    assert(registerWithEmailnPasswordPressed != null);
    assert(signInWithEmailnPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    return registerWithEmailnPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result registerWithEmailnPasswordPressed(
        RegisterWithEmailnPasswordPressed value),
    Result signInWithEmailnPasswordPressed(
        SignInWithEmailnPasswordPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailnPasswordPressed != null) {
      return registerWithEmailnPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class RegisterWithEmailnPasswordPressed implements SignInFormEvent {
  const factory RegisterWithEmailnPasswordPressed() =
      _$RegisterWithEmailnPasswordPressed;
}

abstract class $SignInWithEmailnPasswordPressedCopyWith<$Res> {
  factory $SignInWithEmailnPasswordPressedCopyWith(
          SignInWithEmailnPasswordPressed value,
          $Res Function(SignInWithEmailnPasswordPressed) then) =
      _$SignInWithEmailnPasswordPressedCopyWithImpl<$Res>;
}

class _$SignInWithEmailnPasswordPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInWithEmailnPasswordPressedCopyWith<$Res> {
  _$SignInWithEmailnPasswordPressedCopyWithImpl(
      SignInWithEmailnPasswordPressed _value,
      $Res Function(SignInWithEmailnPasswordPressed) _then)
      : super(_value, (v) => _then(v as SignInWithEmailnPasswordPressed));

  @override
  SignInWithEmailnPasswordPressed get _value =>
      super._value as SignInWithEmailnPasswordPressed;
}

class _$SignInWithEmailnPasswordPressed
    with DiagnosticableTreeMixin
    implements SignInWithEmailnPasswordPressed {
  const _$SignInWithEmailnPasswordPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.signInWithEmailnPasswordPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SignInFormEvent.signInWithEmailnPasswordPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithEmailnPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result registerWithEmailnPasswordPressed(),
    @required Result signInWithEmailnPasswordPressed(),
    @required Result signInWithGooglePressed(),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
  }) {
    assert(registerWithEmailnPasswordPressed != null);
    assert(signInWithEmailnPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    return signInWithEmailnPasswordPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result registerWithEmailnPasswordPressed(),
    Result signInWithEmailnPasswordPressed(),
    Result signInWithGooglePressed(),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailnPasswordPressed != null) {
      return signInWithEmailnPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result registerWithEmailnPasswordPressed(
            RegisterWithEmailnPasswordPressed value),
    @required
        Result signInWithEmailnPasswordPressed(
            SignInWithEmailnPasswordPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
  }) {
    assert(registerWithEmailnPasswordPressed != null);
    assert(signInWithEmailnPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    return signInWithEmailnPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result registerWithEmailnPasswordPressed(
        RegisterWithEmailnPasswordPressed value),
    Result signInWithEmailnPasswordPressed(
        SignInWithEmailnPasswordPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailnPasswordPressed != null) {
      return signInWithEmailnPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmailnPasswordPressed implements SignInFormEvent {
  const factory SignInWithEmailnPasswordPressed() =
      _$SignInWithEmailnPasswordPressed;
}

abstract class $SignInWithGooglePressedCopyWith<$Res> {
  factory $SignInWithGooglePressedCopyWith(SignInWithGooglePressed value,
          $Res Function(SignInWithGooglePressed) then) =
      _$SignInWithGooglePressedCopyWithImpl<$Res>;
}

class _$SignInWithGooglePressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInWithGooglePressedCopyWith<$Res> {
  _$SignInWithGooglePressedCopyWithImpl(SignInWithGooglePressed _value,
      $Res Function(SignInWithGooglePressed) _then)
      : super(_value, (v) => _then(v as SignInWithGooglePressed));

  @override
  SignInWithGooglePressed get _value => super._value as SignInWithGooglePressed;
}

class _$SignInWithGooglePressed
    with DiagnosticableTreeMixin
    implements SignInWithGooglePressed {
  const _$SignInWithGooglePressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.signInWithGooglePressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SignInFormEvent.signInWithGooglePressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result registerWithEmailnPasswordPressed(),
    @required Result signInWithEmailnPasswordPressed(),
    @required Result signInWithGooglePressed(),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
  }) {
    assert(registerWithEmailnPasswordPressed != null);
    assert(signInWithEmailnPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    return signInWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result registerWithEmailnPasswordPressed(),
    Result signInWithEmailnPasswordPressed(),
    Result signInWithGooglePressed(),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
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
    @required
        Result registerWithEmailnPasswordPressed(
            RegisterWithEmailnPasswordPressed value),
    @required
        Result signInWithEmailnPasswordPressed(
            SignInWithEmailnPasswordPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
  }) {
    assert(registerWithEmailnPasswordPressed != null);
    assert(signInWithEmailnPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    return signInWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result registerWithEmailnPasswordPressed(
        RegisterWithEmailnPasswordPressed value),
    Result signInWithEmailnPasswordPressed(
        SignInWithEmailnPasswordPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithGooglePressed implements SignInFormEvent {
  const factory SignInWithGooglePressed() = _$SignInWithGooglePressed;
}

abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

class _$EmailChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object emailStr = freezed,
  }) {
    return _then(EmailChanged(
      emailStr == freezed ? _value.emailStr : emailStr as String,
    ));
  }
}

class _$EmailChanged with DiagnosticableTreeMixin implements EmailChanged {
  const _$EmailChanged(this.emailStr) : assert(emailStr != null);

  @override
  final String emailStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInFormEvent.emailChanged'))
      ..add(DiagnosticsProperty('emailStr', emailStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result registerWithEmailnPasswordPressed(),
    @required Result signInWithEmailnPasswordPressed(),
    @required Result signInWithGooglePressed(),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
  }) {
    assert(registerWithEmailnPasswordPressed != null);
    assert(signInWithEmailnPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result registerWithEmailnPasswordPressed(),
    Result signInWithEmailnPasswordPressed(),
    Result signInWithGooglePressed(),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result registerWithEmailnPasswordPressed(
            RegisterWithEmailnPasswordPressed value),
    @required
        Result signInWithEmailnPasswordPressed(
            SignInWithEmailnPasswordPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
  }) {
    assert(registerWithEmailnPasswordPressed != null);
    assert(signInWithEmailnPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result registerWithEmailnPasswordPressed(
        RegisterWithEmailnPasswordPressed value),
    Result signInWithEmailnPasswordPressed(
        SignInWithEmailnPasswordPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignInFormEvent {
  const factory EmailChanged(String emailStr) = _$EmailChanged;

  String get emailStr;
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

class _$PasswordChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object passwordStr = freezed,
  }) {
    return _then(PasswordChanged(
      passwordStr == freezed ? _value.passwordStr : passwordStr as String,
    ));
  }
}

class _$PasswordChanged
    with DiagnosticableTreeMixin
    implements PasswordChanged {
  const _$PasswordChanged(this.passwordStr) : assert(passwordStr != null);

  @override
  final String passwordStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInFormEvent.passwordChanged'))
      ..add(DiagnosticsProperty('passwordStr', passwordStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result registerWithEmailnPasswordPressed(),
    @required Result signInWithEmailnPasswordPressed(),
    @required Result signInWithGooglePressed(),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
  }) {
    assert(registerWithEmailnPasswordPressed != null);
    assert(signInWithEmailnPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result registerWithEmailnPasswordPressed(),
    Result signInWithEmailnPasswordPressed(),
    Result signInWithGooglePressed(),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result registerWithEmailnPasswordPressed(
            RegisterWithEmailnPasswordPressed value),
    @required
        Result signInWithEmailnPasswordPressed(
            SignInWithEmailnPasswordPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
  }) {
    assert(registerWithEmailnPasswordPressed != null);
    assert(signInWithEmailnPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result registerWithEmailnPasswordPressed(
        RegisterWithEmailnPasswordPressed value),
    Result signInWithEmailnPasswordPressed(
        SignInWithEmailnPasswordPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignInFormEvent {
  const factory PasswordChanged(String passwordStr) = _$PasswordChanged;

  String get passwordStr;
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

class _$SignInFormStateTearOff {
  const _$SignInFormStateTearOff();

  _SignInFormState call(
      {@required EmailAddress emailAddress,
      @required Password password,
      @required bool showErrorMsg,
      @required bool isSubmitting,
      @required Option<Either<AuthFailure, User>> authFailureOrSuccessOption}) {
    return _SignInFormState(
      emailAddress: emailAddress,
      password: password,
      showErrorMsg: showErrorMsg,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $SignInFormState = _$SignInFormStateTearOff();

mixin _$SignInFormState {
  EmailAddress get emailAddress;
  Password get password;
  bool get showErrorMsg;
  bool get isSubmitting;
  Option<Either<AuthFailure, User>> get authFailureOrSuccessOption;

  $SignInFormStateCopyWith<SignInFormState> get copyWith;
}

abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool showErrorMsg,
      bool isSubmitting,
      Option<Either<AuthFailure, User>> authFailureOrSuccessOption});
}

class _$SignInFormStateCopyWithImpl<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  final SignInFormState _value;
  // ignore: unused_field
  final $Res Function(SignInFormState) _then;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object showErrorMsg = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      showErrorMsg:
          showErrorMsg == freezed ? _value.showErrorMsg : showErrorMsg as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, User>>,
    ));
  }
}

abstract class _$SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$SignInFormStateCopyWith(
          _SignInFormState value, $Res Function(_SignInFormState) then) =
      __$SignInFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool showErrorMsg,
      bool isSubmitting,
      Option<Either<AuthFailure, User>> authFailureOrSuccessOption});
}

class __$SignInFormStateCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res>
    implements _$SignInFormStateCopyWith<$Res> {
  __$SignInFormStateCopyWithImpl(
      _SignInFormState _value, $Res Function(_SignInFormState) _then)
      : super(_value, (v) => _then(v as _SignInFormState));

  @override
  _SignInFormState get _value => super._value as _SignInFormState;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object showErrorMsg = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignInFormState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      showErrorMsg:
          showErrorMsg == freezed ? _value.showErrorMsg : showErrorMsg as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, User>>,
    ));
  }
}

class _$_SignInFormState
    with DiagnosticableTreeMixin
    implements _SignInFormState {
  const _$_SignInFormState(
      {@required this.emailAddress,
      @required this.password,
      @required this.showErrorMsg,
      @required this.isSubmitting,
      @required this.authFailureOrSuccessOption})
      : assert(emailAddress != null),
        assert(password != null),
        assert(showErrorMsg != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final bool showErrorMsg;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, User>> authFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormState(emailAddress: $emailAddress, password: $password, showErrorMsg: $showErrorMsg, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInFormState'))
      ..add(DiagnosticsProperty('emailAddress', emailAddress))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('showErrorMsg', showErrorMsg))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty(
          'authFailureOrSuccessOption', authFailureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInFormState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.showErrorMsg, showErrorMsg) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMsg, showErrorMsg)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(showErrorMsg) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
          {@required
              EmailAddress emailAddress,
          @required
              Password password,
          @required
              bool showErrorMsg,
          @required
              bool isSubmitting,
          @required
              Option<Either<AuthFailure, User>> authFailureOrSuccessOption}) =
      _$_SignInFormState;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  bool get showErrorMsg;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, User>> get authFailureOrSuccessOption;
  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith;
}
