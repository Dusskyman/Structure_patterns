import 'Adapt.dart';
import 'Target.dart';

class Adapter implements Target {
  final Adapt _adapt;
  Adapter(this._adapt);
  @override
  String inKilo() {
    return 'This is ${this._adapt.inPound()}';
  }
}
