import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/src_v2/features/theme/di/theme_di.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';
import '../../domain/user_bloc/user_bloc.dart';
import '../../../theme/theme_bloc/theme_bloc.dart';
import '../../shared/user_model.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _secondNameController;
  late TextEditingController _nicknameController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _secondNameController = TextEditingController();
    _nicknameController = TextEditingController();

    final state = context.read<UserBloc>().state;
    if (state is UserLoadedState) {
      _nameController.text = state.userDataModel.name;
      _secondNameController.text = state.userDataModel.secondName;
      _nicknameController.text = state.userDataModel.nickname;
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _secondNameController.dispose();
    _nicknameController.dispose();
    super.dispose();
  }

  void _saveChanges() {
    if (_formKey.currentState?.validate() ?? false) {
      final updatedUser = UserModel(
        name: _nameController.text,
        secondName: _secondNameController.text,
        nickname: _nicknameController.text,
      );
      context.read<UserBloc>().add(
            UserUpdateEvent(
              uuid: '', // This will be set by UserInteractor
              userModel: updatedUser,
            ),
          );
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Настройки'),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: _saveChanges,
          ),
        ],
      ),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          return switch (state) {
            UserLoadingState() => const Center(
                child: CircularProgressIndicator(),
              ),
            UserLoadedState() => SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Личные данные',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: _nameController,
                          decoration: const InputDecoration(
                            labelText: 'Имя',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value?.isEmpty ?? true) {
                              return 'Пожалуйста, введите имя';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: _secondNameController,
                          decoration: const InputDecoration(
                            labelText: 'Фамилия',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value?.isEmpty ?? true) {
                              return 'Пожалуйста, введите фамилию';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: _nicknameController,
                          decoration: const InputDecoration(
                            labelText: 'Никнейм',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value?.isEmpty ?? true) {
                              return 'Пожалуйста, введите никнейм';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 32),
                        Text(
                          'Внешний вид',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(height: 16),
                        ScopeBuilder<ThemeContainer>.withPlaceholder(
                          builder: (context, scope) =>
                              BlocBuilder<ThemeBloc, ThemeState>(
                            bloc: scope.themeBloc.get,
                            builder: (context, themeState) {
                              return SwitchListTile(
                                title: const Text('Темная тема'),
                                value: themeState.isDarkMode,
                                onChanged: (_) {
                                  context
                                      .read<ThemeBloc>()
                                      .add(ToggleThemeEvent());
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            UserErrorState() => const Center(
                child: Text(
                  'Ошибка загрузки данных',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            _ => const SizedBox.shrink(),
          };
        },
      ),
    );
  }
}
