import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
    _holder = SignUpScopeHolder()..create();
  }

  @override
  void dispose() {
    _holder.drop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) => context.go('/sign_in'),
      canPop: false,
      child: Scaffold(
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SafeArea(
            child: ScopeProvider(
              holder: _holder,
              child: ScopeBuilder<SignUpContainer>.withPlaceholder(
                builder: (context, scope) {
                  final fieldsBloc = scope.inputAccountRegistrationFieldsBloc.get;
                  final signUpBloc = scope.signUpBloc.get;
      
                  return Center(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SignUpAppBar(),
                          const SizedBox(height: 24),
                          _buildTextField(
                            label: 'Email',
                            key: const Key('signUpForm_emailInput_textField'),
                            validator: fieldsBloc.emailValidator,
                            onChanged: (val) =>
                                fieldsBloc.add(InputSignUpEmailEvent(email: val)),
                            context: context,
                            keyboardType: TextInputType.emailAddress,
                            obscureText: false,
                          ),
                          const SizedBox(height: 16),
                          _buildTextField(
                            label: 'Пароль',
                            key: const Key('signUpForm_passwordInput_textField'),
                            validator: fieldsBloc.passwordValidator,
                            onChanged: (val) => fieldsBloc
                                .add(InputSignUpPasswordEvent(password: val)),
                            context: context,
                            obscureText: true,
                          ),
                          const SizedBox(height: 16),
                          _buildTextField(
                            label: 'Подтвердите пароль',
                            key: const Key(
                                'signUpForm_confirmedPasswordInput_textField'),
                            validator: fieldsBloc.passwordSubmittedValidator,
                            onChanged: (val) => fieldsBloc.add(
                                InputSignUpPasswordSubmitEvent(
                                    passwordSubmitted: val)),
                            context: context,
                            obscureText: true,
                          ),
                          const SizedBox(height: 24),
                          SignUpButton(
                            signUpBloc: signUpBloc,
                            inputFieldsBloc: fieldsBloc,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required Key key,
    required String label,
    required String? Function(String?) validator,
    required void Function(String) onChanged,
    required BuildContext context,
    bool obscureText = false,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return TextFormField(
      key: key,
      onChanged: onChanged,
      autovalidateMode: AutovalidateMode.always,
      validator: validator,
      obscureText: obscureText,
      keyboardType: keyboardType,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        labelText: label,
        helperText: '',
        labelStyle:
            context.textStyles.smallM.copyWith(color: context.colors.black),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: context.colors.black),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: context.colors.baseText),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: context.colors.mario),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: context.colors.mario),
        ),
      ),
    );
  }
}
