part of 'auth_bloc.dart';

enum AuthenticationStatus {
  unknown,
  authenticated,
  unauthenticated,
  me,
  verification
}

enum PageReady { notReady, ready }

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    @Default(AuthenticationStatus.unknown) AuthenticationStatus status,
    @Default(PageReady.notReady) PageReady statusPage,
    DataUserLogin? loginUser,
    String? tokenUser,
    String? userModel,
  }) = _AuthenticationState;

  factory AuthenticationState.authenticated(
    DataUserLogin loginUser,
    String tokenUser,
  ) =>
      AuthenticationState(
          status: AuthenticationStatus.authenticated,
          loginUser: loginUser,
          tokenUser: tokenUser);

  factory AuthenticationState.unauthenticated() =>
      const AuthenticationState(status: AuthenticationStatus.unauthenticated);

  factory AuthenticationState.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationStateFromJson(json);
}
