import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/src_v2/features/test_session/di/test_session_provider.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';
import '../bloc/test_session_bloc.dart';
import '../di/test_session_scope.dart';
import '../widgets/question_widgets.dart';
import '../widgets/answer_widgets.dart';
import '../models/task_model.dart' as task_model;

class TestSessionScreen extends StatelessWidget {
  final String courseId;
  final String testId;

  const TestSessionScreen({
    required this.courseId,
    required this.testId,
    super.key,
  });

  Widget _buildAnswerButton(
      BuildContext context, TestSessionLoaded state, Widget answerWidget) {
    return FilledButton(
      onPressed:  () {
              if (state.isAnswered) {
                context.read<TestSessionBloc>().add(
                      const TestSessionNextTask(),
                    );
              } else {
                context.read<TestSessionBloc>().add(
                      const TestSessionAnswerSubmitted(),
                    );
              }
            },
      style: FilledButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Text(
        state.isAnswered
            ? (state.currentTaskIndex == state.totalTasks - 1
                ? 'Завершить'
                : 'Далее')
            : 'Ответить',
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TestSessionProvider(
      courseId: courseId,
      testId: testId,
      child: ScopeBuilder<TestSessionScopeContainer>.withPlaceholder(
        builder: (context, scope) => BlocProvider(
          create: (context) => scope.bloc.get,
          child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              leading: IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.of(context).pop(),
              ),
              title: BlocBuilder<TestSessionBloc, TestSessionState>(
                builder: (context, state) {
                  if (state is TestSessionLoaded) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            'Вопрос ${state.currentTaskIndex + 1} из ${state.totalTasks}',
                            style: Theme.of(context).textTheme.titleMedium),
                        const SizedBox(height: 4),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: LinearProgressIndicator(
                            value: state.progress,
                            minHeight: 6,
                            backgroundColor:
                                Theme.of(context).colorScheme.surfaceVariant,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ),
                      ],
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
              toolbarHeight: 96,
              backgroundColor: Theme.of(context).colorScheme.background,
            ),
            body: BlocBuilder<TestSessionBloc, TestSessionState>(
              builder: (context, state) {
                if (state is TestSessionLoading) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (state is TestSessionError) {
                  return Center(
                    child: SelectableText.rich(
                      TextSpan(
                        text: 'Ошибка: ',
                        style: const TextStyle(color: Colors.red),
                        children: [
                          TextSpan(
                            text: state.message,
                            style: const TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  );
                }

                if (state is TestSessionLoaded) {
                  final answerWidget = AnswerWidget(
                    task: state.currentTask,
                    onAnswerChanged: (answer) {
                      context.read<TestSessionBloc>().add(
                            TestSessionAnswerChanged(answer: answer),
                          );
                    },
                    isAnswered: state.isAnswered,
                    isCorrect: state.isCorrect,
                    userAnswer: state.userAnswer,
                  );

                  final content = [
                    _buildCard(
                      context,
                      title: 'Вопрос',
                      child: QuestionWidget(task: state.currentTask),
                    ),
                    const SizedBox(height: 16),
                    _buildCard(
                      context,
                      title: 'Ваш ответ',
                      child: answerWidget,
                      footer: Padding(
                        padding: const EdgeInsets.only(top: 24),
                        child: SizedBox(
                          width: double.infinity,
                          child:
                              _buildAnswerButton(context, state, answerWidget),
                        ),
                      ),
                    ),
                  ];

                  return ListView(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 24,
                    ),
                    children: content,
                  );
                }

                if (state is TestSessionCompleted) {
                  return Center(
                    child: Card(
                      margin: const EdgeInsets.all(24),
                      child: Padding(
                        padding: const EdgeInsets.all(24),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Тест завершен!',
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                            const SizedBox(height: 24),
                            Text(
                              'Правильных ответов: ${state.correctAnswers} из ${state.totalTasks}',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Процент выполнения: ${state.score.toStringAsFixed(1)}%',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const SizedBox(height: 24),
                            FilledButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: const Text('Вернуться к курсу'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }

                return const SizedBox.shrink();
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCard(
    BuildContext context, {
    required String title,
    required Widget child,
    Widget? footer,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.05),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
        border: Border.all(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.08),
        ),
      ),
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.primary,
                ),
          ),
          const SizedBox(height: 16),
          child,
          if (footer != null) footer,
        ],
      ),
    );
  }
}
