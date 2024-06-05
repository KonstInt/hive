import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/src/features/user/presentation/pages/signup/bloc/signup_bloc.dart';
import 'package:hive/src/util/base_components/widgets/simple_button.dart';
import 'package:hive/src/util/themes/extensions/build_context_ext.dart';

class SignUpForm2 extends StatelessWidget {
  const SignUpForm2({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpBloc, SignUpState>(
      listener: (context, state) {
        if (state.status.isSuccess) {
          Navigator.pop(context);
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
              _ImagePicker(),
              const SizedBox(height: 16),
              _NickName(),
              const SizedBox(height: 16),
              _Name(),
              const SizedBox(height: 16),
              _Surname(),
              const SizedBox(height: 24),
              _SignUpButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class _NickName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => previous.alias != current.alias,
      builder: (context, state) {
        return TextField(
          key: const Key('nick_input'),
          onChanged: (nickName) => context
              .read<SignUpBloc>()
              .add(SignUpEvent.nicknameChanged(nickname: nickName)),
          decoration: InputDecoration(
            labelText: 'Псевдоним',
            helperText: '',
            errorText: (state.errorMessage != null) ? state.errorMessage : null,
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
            labelStyle: context.textStyles.smallM.copyWith(color: context.colors.black),
          ),
          textInputAction: TextInputAction.next,
        );
      },
    );
  }
}

class _Name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => previous.name != current.name,
      builder: (context, state) {
        return TextField(
          key: const Key('name'),
          onChanged: (name) => context
              .read<SignUpBloc>()
              .add(SignUpEvent.nameChanged(name: name)),
          decoration: InputDecoration(
            labelText: 'Имя',
            helperText: '',
            errorText: (state.errorMessage != null) ? state.errorMessage : null,
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
            labelStyle: context.textStyles.smallM.copyWith(color: context.colors.black),
          ),
          textInputAction: TextInputAction.next,
        );
      },
    );
  }
}

class _Surname extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => previous.surname != current.surname,
      builder: (context, state) {
        return TextField(
          key: const Key('surname'),
          onChanged: (surname) => context
              .read<SignUpBloc>()
              .add(SignUpEvent.surnameChanged(surname: surname)),
          decoration: InputDecoration(
            labelText: 'Фамилия',
            helperText: '',
            errorText: (state.errorMessage != null) ? state.errorMessage : null,
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
            labelStyle: context.textStyles.smallM.copyWith(color: context.colors.black),
          ),
          textInputAction: TextInputAction.next,
        );
      },
    );
  }
}

class _SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpBloc, SignUpState>(
      listener: (context, state) {
        state.mapOrNull(
          secondPage: (value) {
            if (value.status == FormzSubmissionStatus.success) {
              context.go('/home');
            }
          },
        );
      },
      builder: (context, state) {
        return state.status.isInProgress
            ? const CircularProgressIndicator()
            : ElevatedButton(
                key: const Key('signUpForm_continue_raisedButton'),
                style: ElevatedButton.styleFrom(
                  disabledBackgroundColor: context.colors.disabled,
                  backgroundColor: Colors.blue,
                  foregroundColor: context.colors.inverseText,
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
                            .add(SignUpEvent.signUpFormSubmitted());
                      }
                    : null,
                child: Text('Регистрация', style: context.textStyles.bodyM),
              );
      },
    );
  }
}

class _ImagePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => previous.photo != current.photo,
      builder: (context, state) {
        return Center(
          child: Stack(
            children: [
              Container(
                height: 200,
                width: 200,
                alignment: Alignment.bottomCenter,
                key: const Key('image_picker'),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 2,
                    color: Colors.black45,
                  ),
                  image: (state.photo == '')
                      ? null
                      : DecorationImage(
                          image: MemoryImage(base64Decode(state.photo)),
                          fit: BoxFit.cover,
                        ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: IconButton(
                  onPressed: () {
                    context.read<SignUpBloc>().add(SignUpEvent.photoChanged());
                    FocusScope.of(context).unfocus();
                  },
                  icon: Icon(
                    Icons.camera_alt,
                    size: 45,
                    color: context.colors.black,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}