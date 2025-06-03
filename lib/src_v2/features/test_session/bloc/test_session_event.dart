part of 'test_session_bloc.dart';

abstract class TestSessionEvent extends Equatable {
  const TestSessionEvent();

  @override
  List<Object?> get props => [];
}

class TestSessionStarted extends TestSessionEvent {
  const TestSessionStarted();
}

class TestSessionAnswerChanged extends TestSessionEvent {
  final answer_model.AnswerModel answer;

  const TestSessionAnswerChanged({required this.answer});

  @override
  List<Object?> get props => [answer];
}

class TestSessionAnswerSubmitted extends TestSessionEvent {
  const TestSessionAnswerSubmitted();
}

class TestSessionNextTask extends TestSessionEvent {
  const TestSessionNextTask();
}
