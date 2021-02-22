abstract class Component {
  Component() {}
  String operation();
  void add(Component component) {
    throw UnimplementedError();
  }
  void remove(Component component) {
    throw UnimplementedError();
  }
  bool isComposite() {
    return true;
  }
}
