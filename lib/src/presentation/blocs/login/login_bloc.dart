import 'dart:async';

import 'package:becca_supir/src/data/models/response/login/response_login.dart';
import 'package:becca_supir/src/domain/repository/user_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/model/form_text_input.dart';
import '../../../domain/exception/api_exception.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final UserRepository userRepository;

  LoginBloc({required this.userRepository})
      : super(LoginState(
          fieldUsername: FormTextInput.pure(),
          fieldPassword: FormTextInput.pure(),
        )) {
    on<OnUsernameChanged>(_onOnEmailChanged);
    on<OnPasswordChanged>(_onOnPasswordChanged);
    on<TogglePasswordObscured>(_onTogglePasswordObscured);
    on<SubmitLogin>(_onSubmitLogin);
  }

  FutureOr<void> _onOnEmailChanged(
      OnUsernameChanged event, Emitter<LoginState> emit) async {
    final fieldUsername = state.fieldUsername.toDirty(value: event.username);
    emit(state.copyWith(
      status: Formz.validate([fieldUsername, state.fieldPassword]),
      fieldUsername: fieldUsername,
    ));
  }

  FutureOr<void> _onOnPasswordChanged(
      OnPasswordChanged event, Emitter<LoginState> emit) async {
    final fieldPassword = state.fieldPassword.toDirty(value: event.password);
    emit(state.copyWith(
      status: Formz.validate([state.fieldUsername, fieldPassword]),
      fieldPassword: fieldPassword,
    ));
  }

  FutureOr<void> _onTogglePasswordObscured(
      TogglePasswordObscured event, Emitter<LoginState> emit) {
    print("INI DIKLIK OBSECURE ${event.obscure}");

    emit(state.copyWith(obscurePassword: event.obscure));
  }

  FutureOr<void> _onSubmitLogin(
      SubmitLogin event, Emitter<LoginState> emit) async {
    debugPrint("INI MASUK SUBMIT LOGIN !");

    final fieldUsername = state.fieldUsername.pure
        ? state.fieldUsername.toDirty(fromTextController: true)
        : state.fieldUsername;
    final fieldPassword = state.fieldPassword.pure
        ? state.fieldPassword.toDirty(fromTextController: true)
        : state.fieldPassword;
    final status = Formz.validate([fieldUsername, fieldPassword]);

    if (!status.isValid) {
      emit(state.copyWith(
        status: status,
        fieldUsername: fieldUsername,
        fieldPassword: fieldPassword,
      ));
      return;
    }

    emit(state.copyWith(error: null, status: FormzStatus.submissionInProgress));
    try {
      final username = state.fieldUsername.value;
      final password = state.fieldPassword.value;

      final loginUser = await userRepository.login(
        username: username,
        password: password,
      );

      emit(state.copyWith(
        loginUser: loginUser,
        status: FormzStatus.submissionSuccess,
      ));
    } on ApiException catch (e) {
      emit(state.copyWith(
        error: e.message,
        status: FormzStatus.submissionFailure,
      ));
    }
  }
}
