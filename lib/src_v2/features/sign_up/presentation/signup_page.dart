import 'package:flutter/material.dart';

import 'package:hive/src_v2/features/sign_up/presentation/sign_up_button.dart';
import 'package:hive/src_v2/features/sign_up/presentation/signup_app_bar.dart';
import 'package:hive/src_v2/features/theme/themes/extensions/build_context_ext.dart';
import 'package:hive/src_v2/features/sign_up/domain/input_account_registration_fields/input_account_registration_fields.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

import '../di/sign_up_scope.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late final SignUpScopeHolder _holder;

  @override
  void initState() {
    super.initState();
    _holder = SignUpScopeHolder();
    _holder.create();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: ScopeProvider(
          holder: _holder,
          child: ScopeBuilder<SignUpContainer>.withPlaceholder(
            builder: (context, scope) {
              final fieldsBloc = scope.inputAccountRegistrationFieldsBloc.get;
              return Align(
                alignment: const Alignment(0, -1 / 3),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SignUpAppBar(),
                      _EmailInput(
                        validator: fieldsBloc.emailValidator,
                        onChanged: (val) => fieldsBloc.add(
                          InputSignUpEmailEvent(
                            email: val,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      _PasswordInput(
                        validator: fieldsBloc.passwordValidator,
                        onChanged: (val) => fieldsBloc.add(
                          InputSignUpPasswordEvent(
                            password: val,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      _ConfirmedPasswordInput(
                        validator: fieldsBloc.passwordSubmittedValidator,
                        onChanged: (val) => fieldsBloc.add(
                          InputSignUpPasswordSubmitEvent(
                            passwordSubmitted: val,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      SignUpButton(
                        signUpBloc: scope.signUpBloc.get,
                        inputFieldsBloc:
                            scope.inputAccountRegistrationFieldsBloc.get,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _EmailInput extends StatelessWidget {
  final String? Function(String?) validator;
  final void Function(String) onChanged;

  const _EmailInput({
    required this.validator,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: const Key('signUpForm_emailInput_textField'),
      onChanged: (email) => onChanged(email),
      autovalidateMode: AutovalidateMode.always,
      validator: (email) => validator(email),
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        helperText: '',
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
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: context.colors.mario),
        ),
        labelStyle:
            context.textStyles.smallM.copyWith(color: context.colors.black),
      ),
      textInputAction: TextInputAction.next,
    );
  }
}

class _PasswordInput extends StatelessWidget {
  final String? Function(String?) validator;
  final void Function(String) onChanged;

  const _PasswordInput({
    required this.validator,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: const Key('signUpForm_passwordInput_textField'),
      onChanged: (newPassword) => onChanged(newPassword),
      autovalidateMode: AutovalidateMode.always,
      validator: (newPassword) => validator(newPassword),
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Пароль',
        helperText: '',
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
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: context.colors.mario),
        ),
        labelStyle:
            context.textStyles.smallM.copyWith(color: context.colors.black),
      ),
      textInputAction: TextInputAction.next,
    );
  }
}

class _ConfirmedPasswordInput extends StatelessWidget {
  final String? Function(String?) validator;
  final void Function(String) onChanged;

  const _ConfirmedPasswordInput({
    required this.validator,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: const Key('signUpForm_confirmedPasswordInput_textField'),
      onChanged: (confirmedPassword) => onChanged(confirmedPassword),
      autovalidateMode: AutovalidateMode.always,
      validator: (confirmedPassword) => validator(confirmedPassword),
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Подтвердите пароль',
        helperText: '',
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
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: context.colors.mario),
        ),
        labelStyle:
            context.textStyles.smallM.copyWith(color: context.colors.black),
      ),
      textInputAction: TextInputAction.done,
    );
  }
}
