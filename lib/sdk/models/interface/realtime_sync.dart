class PostEvents {}

abstract class RealTimeSync {
  void onEvent(List<int> events);

  static final List<RealTimeSync> _listeners = [];

  static addListener(RealTimeSync l) {
    _listeners.add(l);
  }

  static removeListener(RealTimeSync l) {
    _listeners.remove(l);
  }

  static _call(Function(RealTimeSync listener) f) {
    final listeners = List.of(_listeners);

    for (final listener in listeners) {
      try {
        f(listener);
      } catch (e) {
        removeListener(listener);
      }
    }
  }

  static postEvent(List<int> events) {
    _call((listener) => listener.onEvent(events));
  }

}
