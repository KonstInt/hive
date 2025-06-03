import 'package:rxdart/rxdart.dart';

/// Класс-прокси для передачи значений между двумя сущностями через Stream.
class StreamProxy<T> {
  final BehaviorSubject<T> _controller;

  /// Конструктор с [initialValue], чтобы сохранить первое значение для последующих подписчиков.
  StreamProxy(T initialValue)
      : _controller = BehaviorSubject.seeded(initialValue);

  /// Поток, на который можно подписаться и получать значения.
  Stream<T> get stream => _controller.stream;

  /// Текущее значение (всегда есть благодаря BehaviorSubject).
  T get value => _controller.value;

  /// Положить новое значение в поток.
  void add(T newValue) {
    _controller.add(newValue);
  }

  /// Освобождение ресурсов.
  void dispose() {
    _controller.close();
  }
}
