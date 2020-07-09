part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @required String userId,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(userId: '');
  factory AuthState.authenticated(String userId) => AuthState(userId: userId);
  factory AuthState.unauthenticated() => AuthState(userId: '');
}
