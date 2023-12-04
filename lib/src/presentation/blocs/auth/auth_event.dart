part of 'auth_bloc.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();
}

class AuthenticationStatusChanged extends AuthenticationEvent {
  const AuthenticationStatusChanged(this.status,
      [this.loginUser, this.tokenUser]);
  final AuthenticationStatus status;
  final DataUserLogin? loginUser;
  final String? tokenUser;
  @override
  List<Object?> get props => [status, loginUser];
}

class AuthenticationLogoutRequested extends AuthenticationEvent {
  const AuthenticationLogoutRequested();
  @override
  List<Object?> get props => [];
}

class FetchProfile extends AuthenticationEvent {
  const FetchProfile();
  @override
  List<Object?> get props => [];
}

class RegisterUserFetch extends AuthenticationEvent {
  const RegisterUserFetch();
  @override
  List<Object?> get props => [];
}
