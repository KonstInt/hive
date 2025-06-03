import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/src_v2/features/user/di/user_di.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';
import '../../domain/user_bloc/user_bloc.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return ScopeBuilder<UserContainer>.withPlaceholder(
      builder: (context, scope) {
        return BlocBuilder<UserBloc, UserState>(
          bloc: scope.userBloc.get,
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Профиль'),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.settings),
                    onPressed: () => context.go('/profile/settings'),
                  ),
                ],
              ),
              body: switch (state) {
                UserLoadingState() => const Center(child: CircularProgressIndicator()),
                UserErrorState() => const Center(
                  child: Text(
                    'Ошибка загрузки профиля',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                UserLoadedState(userDataModel: final user) => RefreshIndicator(
                  onRefresh: () async {
                    scope.userInteractor.get.loadUser();
                  },
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          const SizedBox(height: 8),
                          CircleAvatar(
                            radius: 48,
                            backgroundColor: Theme.of(context).colorScheme.primary,
                            child: const Icon(Icons.person, size: 48, color: Colors.white),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            user.name,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Text(
                            user.secondName,
                            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: Theme.of(context).textTheme.bodyMedium?.color,
                                ),
                          ),
                          const SizedBox(height: 24),
                          _buildInfoCard(
                            context,
                            title: 'Никнейм',
                            value: user.nickname,
                            icon: Icons.alternate_email,
                          ),
                          const SizedBox(height: 24),
                          ElevatedButton.icon(
                            onPressed: () {
                              scope.userInteractor.get.signOut();
                              context.go('/');
                            },
                            icon: const Icon(Icons.logout),
                            label: const Text('Выйти'),
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size.fromHeight(50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              },
            );
          },
        );
      },
    );
  }

  Widget _buildInfoCard(
    BuildContext context, {
    required String title,
    required String value,
    required IconData icon,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(icon, size: 28, color: Theme.of(context).colorScheme.primary),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    value,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
