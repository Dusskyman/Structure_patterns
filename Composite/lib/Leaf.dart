import 'Component.dart';

class Leaf extends Component {
  @override
  String operation() {
    return 'Leaf';
  }

  @override
  bool isComposite() {
    return false;
  }
}
