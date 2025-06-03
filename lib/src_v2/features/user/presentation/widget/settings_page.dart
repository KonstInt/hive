import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/src_v2/features/theme/di/theme_di.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';
import '../../domain/user_bloc/user_bloc.dart';
import '../../../theme/theme_bloc/theme_bloc.dart';
import '../../shared/user_model.dart';
import '../../di/user_di.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameController;
  late final TextEditingController _secondNameController;
  late final TextEditingController _nicknameController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _secondNameController = TextEditingController();
    _nicknameController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _secondNameController.dispose();
    _nicknameController.dispose();
    super.dispose();
  }

  void _saveChanges(UserBloc bloc) {
    if (_formKey.currentState?.validate() ?? false) {
      final updatedUser = UserModel(
        name: _nameController.text.trim(),
        secondName: _secondNameController.text.trim(),
        nickname: _nicknameController.text.trim(),
      );
      bloc.add(UserUpdateEvent(userModel: updatedUser));
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScopeBuilder<UserContainer>.withPlaceholder(
      builder: (context, userScope) {
        return BlocBuilder<UserBloc, UserState>(
          bloc: userScope.userBloc.get,
          builder: (context, state) {
            if (state is UserLoadedState && _nameController.text.isEmpty) {
              _nameController.text = state.userDataModel.name;
              _secondNameController.text = state.userDataModel.secondName;
              _nicknameController.text = state.userDataModel.nickname;
            }

            return Scaffold(
              appBar: AppBar(
                title: const Text('Настройки'),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.save),
                    onPressed: () => _saveChanges(userScope.userBloc.get),
                  ),
                ],
              ),
              body: switch (state) {
                UserLoadingState() => const Center(child: CircularProgressIndicator()),
                UserErrorState() => const Center(
                    child: Text('Ошибка загрузки данных',
                        style: TextStyle(color: Colors.red))),
                UserLoadedState() => SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Личные данные',
                                style: Theme.of(context).textTheme.titleLarge),
                            const SizedBox(height: 16),
                            _buildTextField(
                              controller: _nameController,
                              label: 'Имя',
                              validatorText: 'Пожалуйста, введите имя',
                            ),
                            const SizedBox(height: 16),
                            _buildTextField(
                              controller: _secondNameController,
                              label: 'Фамилия',
                              validatorText: 'Пожалуйста, введите фамилию',
                            ),
                            const SizedBox(height: 32),
                            Text('Внешний вид',
                                style: Theme.of(context).textTheme.titleLarge),
                            const SizedBox(height: 8),
                            ScopeBuilder<ThemeContainer>.withPlaceholder(
                              builder: (context, scope) =>
                                  BlocBuilder<ThemeBloc, ThemeState>(
                                bloc: scope.themeBloc.get,
                                builder: (context, themeState) {
                                  return SwitchListTile(
                                    contentPadding: EdgeInsets.zero,
                                    title: const Text('Темная тема'),
                                    value: themeState.isDarkMode,
                                    onChanged: (_) {
                                      scope.themeBloc.get.add(ToggleThemeEvent());
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
                _ => const SizedBox.shrink(),
              },
            );
          },
        );
      },
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required String validatorText,
  }) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
        filled: true,
        fillColor: Theme.of(context).colorScheme.surfaceVariant,
      ),
      validator: (value) =>
          (value == null || value.trim().isEmpty) ? validatorText : null,
    );
  }
}
