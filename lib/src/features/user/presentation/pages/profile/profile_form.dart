import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/src/features/user/presentation/pages/profile/bloc/profile_bloc.dart';
import 'package:hive/src/util/themes/extensions/build_context_ext.dart';

class ProfileForm extends StatelessWidget {
  const ProfileForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileBloc, ProfileState>(
      listener: (context, state) {
        // if (state.status.isFailure) {}
      },
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            _Profile(),
          ],
        ),
      ),
    );
  }
}

class _Profile extends StatelessWidget {
  const _Profile();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return Column(
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey[300],
                backgroundImage:
                    (state.photo == null) ? null : NetworkImage(state.photo!),
                child: (state.photo == null)
                    ? Icon(
                        Icons.person,
                        size: 50,
                        color: Colors.grey[700],
                      )
                    : null,
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: Text(
                state.name + ' ' + state.secondName,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: Text(
                state.nickName,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[700],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Divider(),
            const SizedBox(height: 16),
            _buildProfileField(context, 'Имя:', state.name),
            const SizedBox(height: 8),
            _buildProfileField(context, 'Фамилия:', state.secondName),
            const SizedBox(height: 8),
            _buildProfileField(context, 'Никнейм:', state.nickName),
            const SizedBox(height: 16),
            Divider(),
            const SizedBox(height: 16),
            _buildProfileField(context, 'Email:', state.email),
            const SizedBox(height: 8),
            
            const SizedBox(height: 16),
            Divider(),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: context.colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Text(
                  'Выход',
                  style: TextStyle(fontSize: 16),
                ),
                onPressed: () {
                  context.read<ProfileBloc>().add(LogOut());
                  context.go('/login');
                },
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildProfileField(BuildContext context, String label, String value) {
    return Row(
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
        const SizedBox(width: 10),
        Flexible(
          child: Text(
            value,
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
        ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: ProfileForm(),
  ));
}