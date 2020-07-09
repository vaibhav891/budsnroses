import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:budsnroses/domain/Auth/auth_failure.dart';
import 'package:budsnroses/domain/Auth/i_auth_facade.dart';
import 'package:budsnroses/domain/Auth/user.dart';
import 'package:budsnroses/domain/Auth/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial());

  //@override
  //SignInFormState get initialState => SignInFormState.initial();

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    // implement mapEventToState
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
          authFailureOrSuccessOption: none(),
        );
      },
      registerWithEmailnPasswordPressed: (e) async* {
        Either<AuthFailure, User> successOrFailure;
        //set state
        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );

        //check if email and password correct
        // if correct then sign in and set state
        if (state.emailAddress.value.isRight() &&
            state.password.value.isRight()) {
          successOrFailure = await _authFacade.registerWithEmailAndPassword(
              emailAddress: state.emailAddress, password: state.password);
        }

        //finally set state
        yield state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption:
              successOrFailure == null ? none() : some(successOrFailure),
          showErrorMsg: true,
        );
      },
      signInWithEmailnPasswordPressed: (e) async* {
        print('inside SignInWithEmailnPasswordPressed');

        Either<AuthFailure, User> successOrFailure;
        //set state
        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );

        //check if email and password correct
        // if correct then sign in and set state
        if (state.emailAddress.value.isRight() &&
            state.password.value.isRight()) {
          successOrFailure = await _authFacade.signInWithEmailAndPassword(
              emailAddress: state.emailAddress, password: state.password);
        }

        //finally set state
        yield state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption:
              successOrFailure == null ? none() : some(successOrFailure),
          showErrorMsg: true,
        );
      },
      signInWithGooglePressed: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );

        final successOrFailure = await _authFacade.signInWithGoogle();
        yield state.copyWith(
          authFailureOrSuccessOption: some(successOrFailure),
        );
      },
    );
  }
}
