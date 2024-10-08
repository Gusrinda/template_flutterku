import 'dart:async';
import 'dart:collection';
import 'dart:convert';

import 'package:soa_jpt/src/data/models/response/login/response_login.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';
part 'auth_bloc.g.dart';

class AuthBloc extends HydratedBloc<AuthenticationEvent, AuthenticationState> {
  AuthBloc() : super(const AuthenticationState()) {
    on<AuthenticationStatusChanged>(_onAuthenticationStatusChanged);
    on<AuthenticationLogoutRequested>(_onAuthenticationLogoutRequested);
  }

  // final UserRepository userRepository;

  FutureOr<void> _onAuthenticationStatusChanged(
      AuthenticationStatusChanged event,
      Emitter<AuthenticationState> emit) async {
    switch (event.status) {
      case AuthenticationStatus.unauthenticated:
        return emit(AuthenticationState.unauthenticated());
      case AuthenticationStatus.authenticated:
        final loginUser = event.loginUser;

        if (loginUser != null) {
          emit(state.copyWith(
              statusPage: PageReady.notReady, loginUser: loginUser));

          emit(AuthenticationState.authenticated(
              loginUser, event.tokenUser ?? ''));

          break;
        }

        return emit(AuthenticationState.unauthenticated());
      case AuthenticationStatus.me:
        break;
      case AuthenticationStatus.verification:
        print("MASUK BLOC SINI VERIFIKASI DULU !");
        final loginUser = event.loginUser;
        return emit(AuthenticationState(
          status: AuthenticationStatus.verification,
          loginUser: loginUser,
        ));
      default:
        return emit(const AuthenticationState());
    }
  }

  FutureOr<void> _onAuthenticationLogoutRequested(
      AuthenticationLogoutRequested event, Emitter<AuthenticationState> emit) {
    emit(AuthenticationState.unauthenticated());
  }

  @override
  AuthenticationState? fromJson(Map<String, dynamic> json) {
    AuthenticationState? state;
    try {
      state = AuthenticationState.fromJson(json);
    } catch (_) {}
    return state;
  }

  @override
  Map<String, dynamic>? toJson(AuthenticationState state) {
    return state.toJson();
  }
  
}
