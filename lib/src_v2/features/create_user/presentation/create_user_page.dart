import 'package:flutter/material.dart';
import 'package:hive/src_v2/features/theme/themes/extensions/build_context_ext.dart';
import 'package:hive/src_v2/features/create_user/di/sign_in_scope.dart';
import 'package:hive/src_v2/features/create_user/domain/input_personal_fields/input_personal_fields_bloc.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';
import 'create_user_app_bar.dart';
import 'create_user_button.dart';

class AccountCreateUserPage extends StatefulWidget {
  final String uuid;

  const AccountCreateUserPage({
    super.key,
    required this.uuid,
  });

  @override
  State<AccountCreateUserPage> createState() => _AccountCreateUserPageState();
}

class _AccountCreateUserPageState extends State<AccountCreateUserPage> {
  late final CreateUserScopeHolder _holder;

  @override
  void initState() {
    super.initState();
    _holder = CreateUserScopeHolder(uuid: widget.uuid)..create();
  }

  @override
  void dispose() {
    _holder.drop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SafeArea(
          child: ScopeProvider(
            holder: _holder,
            child: ScopeBuilder<CreateUserContainer>.withPlaceholder(
              builder: (context, scope) {
                final inputBloc = scope.inputPersonalFieldsBloc.get;

                return Align(
                  alignment: const Alignment(0, -1 / 3),
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const CreateUserAppBar(),
                        const SizedBox(height: 24),
                        _buildTextField(
                          key: const Key('nick_input'),
                          label: 'Псевдоним',
                          validator: inputBloc.nicknameValidator,
                          onChanged: (val) =>
                              inputBloc.add(InputNicknameEvent(nickname: val)),
                          context: context,
                        ),
                        const SizedBox(height: 16),
                        _buildTextField(
                          key: const Key('name'),
                          label: 'Имя',
                          validator: inputBloc.nameValidator,
                          onChanged: (val) =>
                              inputBloc.add(InputNameEvent(name: val)),
                          context: context,
                        ),
                        const SizedBox(height: 16),
                        _buildTextField(
                          key: const Key('surname'),
                          label: 'Фамилия',
                          validator: inputBloc.secondNameValidator,
                          onChanged: (val) => inputBloc
                              .add(InputSecondNameEvent(secondName: val)),
                          context: context,
                        ),
                        const SizedBox(height: 32),
                        CreateUserButton(
                          accountCreateUserBloc: scope.createUserBloc.get,
                          inputPersonalFieldsBloc: inputBloc,
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
    );
  }

  Widget _buildTextField({
    required Key key,
    required String label,
    required String? Function(String?) validator,
    required void Function(String) onChanged,
    required BuildContext context,
  }) {
    return TextFormField(
      key: key,
      autovalidateMode: AutovalidateMode.always,
      validator: validator,
      onChanged: onChanged,
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
