import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/src/features/user/presentation/pages/profile/bloc/profile_bloc.dart';
import 'package:hive/src/features/user/presentation/pages/profile/profile_form.dart';
import 'package:hive/src/util/themes/extensions/build_context_ext.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    //di
    //FirebaseUserService(), UserUseCase()

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent, title: Text('Профиль', style: context.textStyles.headlineB.copyWith(color: context.colors.baseText) ,)),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: BlocProvider.value(
            value: GetIt.I<ProfileBloc>(),
            child: const ProfileForm(),
          ),
        ),
      ),
    );
  }
}
