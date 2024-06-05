import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:hive/src/features/user/presentation/pages/signup/bloc/signup_bloc.dart';
import 'package:hive/src/features/user/presentation/pages/signup/signup_app_bar.dart';
import 'package:hive/src/util/base_components/widgets/simple_button.dart';
import 'package:hive/src/util/themes/extensions/build_context_ext.dart';

class SignUpForm1 extends StatelessWidget {
  const SignUpForm1({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpBloc, SignUpState>(
      listener: (context, state) {
        if (state.status.isSuccess) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              const SnackBar(content: Text('Успешная регистрация')),
            );
        } else if (state.status.isFailure && state.errorMessage != null) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text(state.errorMessage ?? 'Ошибка регистрации')),
            );
        }
      },
      child: Align(
        alignment: const Alignment(0, -1 / 3),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SignUpAppBar(),
              _EmailInput(),
              const SizedBox(height: 16),
              _PasswordInput(),
              const SizedBox(height: 16),
              _ConfirmedPasswordInput(),
              const SizedBox(height: 24),
              _SignUpButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return TextField(
          key: const Key('signUpForm_emailInput_textField'),
          onChanged: (email) => context
              .read<SignUpBloc>()
              .add(SignUpEvent.emailChanged(email: email)),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'Email',
            helperText: '',
            errorText: (state.errorMessage != null)
                ? (state.errorMessage!.contains('email') ||
                        state.errorMessage!.contains('email.'))
                    ? state.errorMessage
                    : null
                : null,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: context.colors.black),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: context.colors.blueTooth),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: context.colors.mario),
            ),
            labelStyle: context.textStyles.smallM
                .copyWith(color: context.colors.black),
          ),
          textInputAction: TextInputAction.next,
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextField(
          key: const Key('signUpForm_passwordInput_textField'),
          onChanged: (newPassword) => context
              .read<SignUpBloc>()
              .add(SignUpEvent.passwordChanged(password: newPassword)),
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Пароль',
            helperText: '',
            errorText: (state.errorMessage != null)
                ? (state.errorMessage!.contains('password') ||
                        state.errorMessage!.contains('password.'))
                    ? state.errorMessage
                    : null
                : null,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: context.colors.black),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: context.colors.blueTooth),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: context.colors.mario),
            ),
            labelStyle: context.textStyles.smallM
                .copyWith(color: context.colors.black),
          ),
          textInputAction: TextInputAction.next,
        );
      },
    );
  }
}

class _ConfirmedPasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextField(
          key: const Key('signUpForm_confirmedPasswordInput_textField'),
          onChanged: (confirmedPassword) => context.read<SignUpBloc>().add(
              SignUpEvent.confirmedPasswordChanged(
                  confirmedPassword: confirmedPassword)),
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Подтвердите пароль',
            helperText: '',
            errorText: (state.errorMessage != null)
                ? (state.errorMessage!.contains('password') ||
                        state.errorMessage!.contains('password.'))
                    ? state.errorMessage
                    : null
                : null,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: context.colors.black),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: context.colors.blueTooth),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: context.colors.mario),
            ),
            labelStyle: context.textStyles.smallM
                .copyWith(color: context.colors.black),
          ),
          textInputAction: TextInputAction.done,
        );
      },
    );
  }
}

class _SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return state.status.isInProgress
            ? const CircularProgressIndicator()
            : ElevatedButton(
                key: const Key('signUpForm_continue_raisedButton'),
                style: ElevatedButton.styleFrom(
                  disabledBackgroundColor: context.colors.disabled,
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: state.isValid
                    ? () {
                        FocusScope.of(context).unfocus();
                        context
                            .read<SignUpBloc>()
                            .add(SignUpEvent.authenticationSubmitted());
                      }
                    : null,
                child: Text('Регистрация', style: context.textStyles.bodyM),
              );
      },
    );
  }
}