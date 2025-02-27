import 'package:sulinda_sales/src/core/utils/extensions.dart';
import 'package:sulinda_sales/src/data/models/response/login/response_login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:formz/formz.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/config/constant.dart';
import '../../../core/config/theme_colors.dart';
import '../../blocs/auth/auth_bloc.dart';
import '../../blocs/login/login_bloc.dart';
import '../../widgets/hero_widget.dart';
import '../../widgets/logo_widget.dart';
import '../../widgets/text_field_widget.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = "/loginView";

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      const id = String.fromEnvironment('USERNAME');
      const pass = String.fromEnvironment('PASSWORD');
      if (id.isNotEmpty && pass.isNotEmpty) {
        final bloc = context.read<LoginBloc>();
        bloc
          ..add(const OnUsernameChanged(id))
          ..add(const OnPasswordChanged(pass));
        bloc.state.fieldUsername.textEditingController.text = id;
        bloc.state.fieldPassword.textEditingController.text = pass;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) async {
        if (state.status.isSubmissionFailure) {
          context.showErrorToast(state.error!);
          return;
        }

        if (state.status.isSubmissionSuccess) {
          ResponseLogin dataResponseLogin = state.loginUser!;

          final tokenUser = "Bearer ${dataResponseLogin.data?.token}";

          print("TOKEN USER? ${tokenUser}");

          context.read<AuthBloc>().add(
                AuthenticationStatusChanged(AuthenticationStatus.authenticated,
                    dataResponseLogin.data, tokenUser),
              );
        }
      },
      child: Scaffold(
        body: _contentView(),
      ),
    );
  }

  Widget _contentView() {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(
              height: kToolbarHeight,
            ),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: SvgPicture.asset(Assets.svg.login)),
            Text(
              "Hi, Selamat Datang",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.sp,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              "Masuk untuk memulai aktivitas",
              style: TextStyle(fontSize: 10.sp, color: themeFont),
            ),
            const SizedBox(
              height: 12,
            ),
            const Hero(
              tag: 'Label-Email',
              flightShuttleBuilder: flightShuttleBuilder,
              child: FormTextLabel(
                label: "Username",
                labelColor: themeHijau,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // ignore: prefer_const_constructors
            _FormInputEmail(),
            const SizedBox(
              height: 30,
            ),
            const Hero(
              tag: 'Label-Password',
              flightShuttleBuilder: flightShuttleBuilder,
              child: FormTextLabel(
                label: "Password",
                labelColor: themeHijau,
              ),
            ),
            const SizedBox(
              height: 4,
            ),

            _FormInputPassword(),
            const SizedBox(
              height: 10,
            ),

            const SizedBox(
              height: 86,
            ),
            BlocBuilder<LoginBloc, LoginState>(
              buildWhen: (previous, current) =>
                  previous.status != current.status,
              builder: (context, state) {
                if (state.status.isSubmissionInProgress) {
                  return Ink(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: const BoxDecoration(
                        color: themeHijau,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: const Center(child: CircularProgressIndicator(
                      color: Colors.white,
                      // value: 20,
                    )),
                  );
                }

                return InkWell(
                  onTap: () {
                    context.read<LoginBloc>().add(const SubmitLogin());
                  },
                  child: Ink(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: const BoxDecoration(
                        color: themeHijau,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: const Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class _FormInputPassword extends StatelessWidget {
  const _FormInputPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) =>
          previous.status != current.status ||
          previous.fieldPassword != current.fieldPassword ||
          previous.obscurePassword != current.obscurePassword,
      builder: (context, state) {
        return Hero(
          tag: 'Form-Password',
          flightShuttleBuilder: flightShuttleBuilder,
          // ignore: prefer_const_constructors
          child: Material(
            color: Colors.transparent,
            // ignore: prefer_const_constructors
            child: FormzTextField(
              hintText: "Input password",
              textEditingController: state.fieldPassword.textEditingController,
              trailing: GestureDetector(
                child: !state.obscurePassword
                    ? Container(
                        padding: EdgeInsets.all(12),
                        child: SvgPicture.asset(Assets.material.eye))
                    : Container(
                        padding: EdgeInsets.all(12),
                        child: SvgPicture.asset(
                          Assets.material.eye,
                          colorFilter:
                              ColorFilter.mode(themeHijau, BlendMode.srcIn),
                        )),
                onTap: () => context
                    .read<LoginBloc>()
                    .add(TogglePasswordObscured(!state.obscurePassword)),
              ),
              obscureText: state.obscurePassword,
              textInputAction: TextInputAction.done,
              onChanged: (password) =>
                  context.read<LoginBloc>().add(OnPasswordChanged(password)),
              readOnly: state.status.isSubmissionInProgress,
              errorText:
                  state.fieldPassword.invalid ? 'Silakan isi password' : null,
            ),
          ),
        );
      },
    );
  }
}

class _FormInputEmail extends StatelessWidget {
  const _FormInputEmail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) =>
          previous.status != current.status ||
          previous.fieldUsername != current.fieldUsername,
      builder: (context, state) {
        return Hero(
          tag: 'Form-Email',
          flightShuttleBuilder: flightShuttleBuilder,
          // ignore: prefer_const_constructors
          child: Material(
            color: Colors.transparent,
            // ignore: prefer_const_constructors
            child: FormzTextField(
              textEditingController: state.fieldUsername.textEditingController,
              hintText: "Input registered username",
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              onChanged: (email) =>
                  context.read<LoginBloc>().add(OnUsernameChanged(email)),
              readOnly: state.status.isSubmissionInProgress,
              errorText:
                  state.fieldUsername.invalid ? 'Silakan isi USERNAME' : null,
            ),
          ),
        );
      },
    );
  }
}
