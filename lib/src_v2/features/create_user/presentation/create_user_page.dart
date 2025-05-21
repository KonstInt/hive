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
    _holder = CreateUserScopeHolder(uuid: widget.uuid);
    _holder.create();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: ScopeProvider(
          holder: _holder,
          child: ScopeBuilder<CreateUserContainer>.withPlaceholder(
            builder: (context, scope) {
              final inputFieldsBloc = scope.inputPersonalFieldsBloc.get;

              return Align(
                alignment: const Alignment(0, -1 / 3),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      CreateUserAppBar(),
                      const SizedBox(height: 16),
                      _NickName(
                        onChanged: (val) => inputFieldsBloc.add(
                          InputNicknameEvent(
                            nickname: val,
                          ),
                        ),
                        validator: inputFieldsBloc.nicknameValidator,
                      ),
                      const SizedBox(height: 16),
                      _Name(
                        onChanged: (val) => inputFieldsBloc.add(
                          InputNameEvent(
                            name: val,
                          ),
                        ),
                        validator: inputFieldsBloc.nameValidator,
                      ),
                      const SizedBox(height: 16),
                      _Surname(
                        onChanged: (val) => inputFieldsBloc.add(
                          InputSecondNameEvent(
                            secondName: val,
                          ),
                        ),
                        validator: inputFieldsBloc.secondNameValidator,
                      ),
                      const SizedBox(height: 24),
                      CreateUserButton(
                        accountCreateUserBloc: scope.createUserBloc.get,
                        inputPersonalFieldsBloc: inputFieldsBloc,
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

  @override
  void dispose() {
    _holder.drop();
    super.dispose();
  }
}

class _NickName extends StatelessWidget {
  final String? Function(String?) validator;
  final void Function(String) onChanged;

  const _NickName({
    required this.onChanged,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: const Key('nick_input'),
      onChanged: (nickName) => onChanged(nickName),
      autovalidateMode: AutovalidateMode.always,
      validator: (nickname) => validator(nickname),
      decoration: InputDecoration(
        labelText: 'Псевдоним',
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

class _Name extends StatelessWidget {
  final String? Function(String?) validator;
  final void Function(String) onChanged;

  const _Name({
    required this.validator,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: const Key('name'),
      onChanged: (name) => onChanged(name),
      autovalidateMode: AutovalidateMode.always,
      validator: (name) => validator(name),
      decoration: InputDecoration(
        labelText: 'Имя',
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

class _Surname extends StatelessWidget {
  final String? Function(String?) validator;
  final void Function(String) onChanged;

  const _Surname({
    required this.onChanged,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: const Key('surname'),
      onChanged: (surname) => onChanged(surname),
      autovalidateMode: AutovalidateMode.always,
      validator: (surname) => validator(surname),
      decoration: InputDecoration(
        labelText: 'Фамилия',
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
