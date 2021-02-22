import 'Component.dart';

class Composite extends Component {
  List<Component> _children = [];
  @override
  void add(Component component) {
    _children.add(component);
  }

  @override
  void remove(Component component) {
    _children.add(component);
  }

  @override
  String operation() {
    int i = 0;
    String result = 'Branch ( ';
    _children.forEach((element) {
      result += element.operation();
      if (i != _children.length - 1) {
        result += ' + ';
      }
      i++;
    });
    return result + ' ) ';
  }
}
