import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/src/features/user/presentation/pages/profile/bloc/profile_bloc.dart';
import 'package:hive/src/features/user/presentation/pages/profile/profile_form.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    //di
    //FirebaseUserService(), UserUseCase()

    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: BlocProvider.value(
          value: GetIt.I<ProfileBloc>(),
          child: const ProfileForm(),
        ),
      ),
    );
  }
}
