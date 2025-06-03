import 'package:flutter/material.dart';
import 'package:hive/src_v2/features/theme/themes/extensions/build_context_ext.dart';

import '../../domain/bloc/input_fields/input_fields_bloc.dart';

class PasswordInput extends StatelessWidget {
  final TextEditingController controller;
  final InputFieldsBloc inputFieldsBloc;

  const PasswordInput({
    required this.controller,
    required this.inputFieldsBloc,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autovalidateMode: AutovalidateMode.always,
      onChanged: (value) => inputFieldsBloc.add(
        InputPasswordEvent(
          password: value,
        ),
      ),
      validator: inputFieldsBloc.passwordValidator,
      decoration: InputDecoration(
        labelText: 'Password',
        helperText: '',
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: context.colors.black),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: context.colors.baseText),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: context.colors.mario),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: context.colors.mario),
        ),
        labelStyle: context.textStyles.smallM.copyWith(
          color: context.colors.black,
        ),
      ),
    );
  }
}
