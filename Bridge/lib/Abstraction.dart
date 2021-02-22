import 'Implemetation.dart';

class Abstraction {
  Implemetation _implemetation;

  Abstraction(this._implemetation);
  String operation() {
    return 'Abstract: Base operation: \n' +
        _implemetation.operationImplementation();
  }
}
